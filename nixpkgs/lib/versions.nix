{
  flakeVersion = input:
    "${builtins.substring 0 8 (input.lastModifiedDate or input.lastModified or "19700101")}.${input.shortRev or "dirty"}";

  upgraded = selfPkg: superPkg:
    if builtins.compareVersions superPkg.version selfPkg.version < 1
    then selfPkg
    else (builtins.trace "note: upgrade ${selfPkg.name} < ${superPkg.name}, ignoring." superPkg);

  outdated = selfPkg: superPkg:
    if builtins.compareVersions superPkg.version selfPkg.version < 1
    then selfPkg
    else (builtins.trace "note: ${selfPkg.name} override is outdated!" selfPkg);
}
