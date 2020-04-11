#!@shell@
set -e

proj=${PWD##*/}
COMPILE_COMMANDS_CACHE=${COMPILE_COMMANDS_CACHE:-"$HOME/.cache/compile-commands/$proj"}
mkdir -p "$COMPILE_COMMANDS_CACHE"

file=$(jq -r -n '$ARGS.positional[] | select(endswith(".c"))' --args -- "$@")
if [ -e "$file" ]; then
    jq  -n \
        '{arguments: $ARGS.positional, directory: $ARGS.named.pwd, file: $ARGS.named.file}' \
         --arg pwd "$PWD" --arg file "$file" --args -- "$@" > "$COMPILE_COMMANDS_CACHE/${file//\//%}"
fi

file=${file//.c/.h}
if [ -e "$file" ]; then
    jq  -n \
        '{arguments: $ARGS.positional, directory: $ARGS.named.pwd, file: $ARGS.named.file}' \
         --arg pwd "$PWD" --arg file "$file"  --args -- "$@" > "$COMPILE_COMMANDS_CACHE${file//\//%}"
fi

exec @prog@ "$@"
