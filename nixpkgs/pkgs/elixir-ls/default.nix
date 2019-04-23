{ stdenv, fetchurl, makeWrapper, unzip, elixir }:

stdenv.mkDerivation rec {
  name = "elixir-ls-${version}";
  version = "0.2.24";
  src = fetchurl {
    url = "https://github.com/JakeBecker/elixir-ls/releases/download/v${version}/elixir-ls.zip";
    sha256 = "0p0fnsqcm0572cgzzyki7i5wvhsa6hx7a9zw1jrgwczhcgvmgpab";
  };

  nativeBuildInputs = [ makeWrapper unzip ];

  unpackPhase = ''
    unzip -d elixir-ls $src
  '';

  installPhase = ''
    mkdir -p $out/bin $out/libexec
    cp -r elixir-ls $out/libexec
    chmod +x $out/libexec/elixir-ls/language_server.sh
    makeWrapper $out/libexec/elixir-ls/language_server.sh $out/bin/elixir-ls \
        --suffix PATH ":" "${elixir}/bin"
  '';

  meta = {
    description = "A language server for Elixir";
    # license = stdenv.lib.licenses.unspecified;
    homepage = https://github.com/JakeBecker/elixir-ls;
    platforfms = platforfms.unix;
  };
}
