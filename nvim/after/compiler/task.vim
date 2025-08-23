if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet errorformat=
            \%Esrc/%f:%l:%c:\ %m,
            \%Esrc/%f:%l:\ error:\ %m,
            \%EFAILED\ src/%f::%o\ -\ %m,
            \%I%task:\ %m,
            \%I%f:%l:\ %m,
            \%I%f:\ %m
CompilerSet makeprg=task
