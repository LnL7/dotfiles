{ stdenv, fetchurl, makeWrapper, unzip, elixir }:

stdenv.mkDerivation rec {
  name = "elixir-ls-${version}";
  version = "0.4.0";
  src = fetchurl {
    url = "https://github.com/elixir-lsp/elixir-ls/releases/download/v${version}/elixir-ls.zip";
    sha256 = "18h1s8gdqsv7ssbx4qawxkzsjpfp7j15p69nwmf81pxlgqxsc94i";
  };

  nativeBuildInputs = [ makeWrapper unzip ];

  unpackPhase = ''
    unzip -d elixir-ls $src
  '';

  installPhase = ''
    mkdir -p $out/bin $out/share
    cp -r elixir-ls $out/share
    chmod +x $out/share/elixir-ls/language_server.sh
    makeWrapper $out/share/elixir-ls/language_server.sh $out/bin/elixir-ls \
        --suffix PATH ":" "${elixir}/bin"
  '';

  meta = with stdenv.lib; {
    description = "A language server for Elixir";
    # license = stdenv.lib.licenses.unspecified;
    homepage = https://github.com/JakeBecker/elixir-ls;
    platforms = platforms.unix;
  };
}
