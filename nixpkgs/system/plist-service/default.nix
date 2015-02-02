{ stdenv, writeTextDir }:

{ program ? null, programArgs ? [], stdout ? null, stderr ? null
, label ? "org.nixos.${name}", workingDirectory ? null, runAtLoad ? true
, keepAlive ? false, disabled ? false, user ? null, group ? null
, name }:

assert program != null -> programArgs == [];
assert program == null -> programArgs != [];

let
  bool = b: if b then "true" else "false";
  renderArgs = strs: ''
    <key>ProgramArguments</key>
    <array>
      ${stdenv.lib.foldl (x : y : "${x}\n<string>${y}</string>")
        ("<string>${builtins.head strs}</string>") (builtins.tail strs)}
    </array>
  '';
  with_ = x: y: stdenv.lib.optionalString (x != null) y;
  drv = writeTextDir "${label}.plist" ''
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>${label}</string>
      <key>Disabled</key>
      <${bool disabled}/>
      ${with_ user ''
        <key>UserName</key>
        <string>${user}</string>
      ''}
      ${with_ group ''
        <key>GroupName</key>
        <string>${group}</string>
      ''}
      <key>KeepAlive</key>
      <${bool keepAlive}/>
      ${with_ program ''
        <key>Program</key>
        <string>${program}</string>
      ''}
      ${stdenv.lib.optionalString (programArgs != []) (renderArgs programArgs)}
      <key>RunAtLoad</key>
      <${bool runAtLoad}/>
      ${with_ workingDirectory ''
        <key>WorkingDirectory</key>
        <string>${workingDirectory}</string>
      ''}
      ${with_ stdout ''
        <key>StandardOutPath</key>
        <string>${stdout}</string>
      ''}
      ${with_ stderr ''
        <key>StandardErrorPath</key>
        <string>${stderr}</string>
      ''}
    </dict>
  </plist>
  '';

in stdenv.lib.overrideDerivation drv (oldAttrs : { name = "service-${name}"; })
