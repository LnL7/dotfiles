if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=
            \%E%f:%l:%c:\ %m,
CompilerSet makeprg=flake8\ "%:p"
