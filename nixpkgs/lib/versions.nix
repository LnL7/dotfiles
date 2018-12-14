{
  upgraded = selfPkg: superPkg:
    if builtins.compareVersions superPkg.name selfPkg.name < 1
    then selfPkg
    else (builtins.trace "note: upgrade ${selfPkg.name} < ${superPkg.name}, ignoring." superPkg);

  outdated = selfPkg: superPkg:
    if builtins.compareVersions superPkg.name selfPkg.name < 1
    then selfPkg
    else (builtins.trace "note: ${selfPkg.name} override is outdated!" selfPkg);
}
