if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=
            \%E%f:%l:\ error:\ %m,
            \%I%f:%l:\ note:\ %m
CompilerSet makeprg=mypy\ "%:p"
