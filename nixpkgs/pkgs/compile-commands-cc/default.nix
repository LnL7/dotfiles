{ stdenv, runCommandNoCC, overrideCC, mkShell, jq }:

let
  inherit (stdenv) shell;

  compileCommandsUpdate = runCommandNoCC "compile-commands-${stdenv.cc.cc.name}" { inherit shell; } ''
    mkdir -p $out/bin

    substituteAll ${./update.sh} $out/bin/compile-commands-update
    chmod +x $out/bin/compile-commands-update
  '';

  compileCommandsCC = runCommandNoCC "compile-commands-${stdenv.cc.cc.name}" { inherit shell; } ''
    mkdir -p $out/bin

    ln -s ${stdenv.cc.cc}/lib $out/lib

    export prog=${stdenv.cc.cc}/bin/clang
    substituteAll ${./cc-wrapper.sh} $out/bin/compile-commands-clang
    export prog=${stdenv.cc.cc}/bin/clang++
    substituteAll ${./cxx-wrapper.sh} $out/bin/compile-commands-clang++

    chmod +x $out/bin/compile-commands-clang $out/bin/compile-commands-clang++
    ln -s compile-commands-clang $out/bin/clang
    ln -s compile-commands-clang++ $out/bin/clang++
  '';

  cc = stdenv.cc.override {
    cc = compileCommandsCC;
    extraTools = [ jq compileCommandsUpdate ];
  };
in
  cc // {
    stdenv = overrideCC stdenv cc;

    example = mkShell {
      nativeBuildInputs = [ cc ];
    };
  }
