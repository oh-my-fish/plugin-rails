function get_rails_command
  if which 'bin/rails' > /dev/null
    set rails_command command 'bin/rails'
  else if which 'rails' > /dev/null
    set rails_command command 'rails'
  end
  eval $rails_command
end

function get_rake_command
  if which 'bin/rake' > /dev/null
    set rake_command command 'bin/rake'
  else if which 'rake' > /dev/null
    set rake_command command 'rake'
  end
  eval $rake_command
end

alias rails='get_rails_command'
alias rake='get_rake_command'

# Rails aliases
alias rc='rails console'
alias rd='rails destroy'
alias rdb='rails dbconsole'
alias rg='rails generate'
alias rgm='rails generate migration'
alias rp='rails plugin'
alias ru='rails runner'
alias rs='rails server'
alias rsd='rails server --debugger'

# Rake aliases
alias rdm='rake db:migrate'
alias rdms='rake db:migrate:status'
alias rdr='rake db:rollback'
alias rdc='rake db:create'
alias rds='rake db:seed'
alias rdd='rake db:drop'
alias rdrs='rake db:reset'
alias rdtc='rake db:test:clone'
alias rdtp='rake db:test:prepare'
alias rdmtc='rake db:migrate db:test:clone'
alias rlc='rake log:clear'
alias rn='rake notes'
alias rr='rake routes'
alias rrg='rake routes | grep'
alias rt='rake test'
alias rmd='rake middleware'

