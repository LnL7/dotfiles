if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=%f(%l:%c)\ %m
CompilerSet makeprg=odin\ build\ %:h\ -vet
