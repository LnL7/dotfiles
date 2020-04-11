#!@shell@
set -e

proj=''${PWD##*/}
COMPILE_COMMANDS_CACHE=''${COMPILE_COMMANDS_CACHE:-"$HOME/.cache/compile-commands/$proj"}
cat "$COMPILE_COMMANDS_CACHE"/* | jq -s > compile_commands.json
