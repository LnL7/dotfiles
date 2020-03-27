{ stdenv, fetchzip, cmake, pam, xpc }:

# $ cat /etc/pam.d/sudo
# auth       optional       /run/current-system/sw/lib/pam/pam_reattach.so
# auth       sufficient     pam_tid.so

stdenv.mkDerivation {
  name = "pam_reattach-2018-09-27";

  src = fetchzip {
    url = "https://github.com/fabianishere/pam_reattach/archive/3326a4b085f19becaaed494b8d711cda78c11bbf.tar.gz";
    sha256 = "1k16gxxnxa7r6c0gw6rcx5x4g8hmm70pavvg6x9ijkv6s0527h2g";
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ pam xpc ];

  meta = with stdenv.lib; {
    platforms = platforms.darwin;
  };
}
