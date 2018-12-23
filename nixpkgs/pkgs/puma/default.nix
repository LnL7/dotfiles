{ bundlerApp }:

bundlerApp {
  pname = "puma";
  gemdir = ./.;
  exes = [ "puma" ];
}
