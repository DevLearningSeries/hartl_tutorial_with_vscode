FROM gitpod/workspace-postgres
USER gitpod

RUN _ruby_version=ruby-3.1.2 \
    && printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
    && bash -lc "rvm reinstall ruby-${_ruby_version} && rvm use ruby-${_ruby_version} --default && rvm @global do gem install 'bundler:2.3.13' -N rails -N webdrivers -N solargraph -N reline -N overcommit -N reek -N brakeman -N rubocop -N rubocop-performance -N rubocop-rails -N rubocop-faker -N rubocop-rspec -N ripper-tags -N better_errors -N debug -N binding_of_caller -N gem-wrappers -N rufo -N scss_lint -N"
RUN printf "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc \
    && printf '{ rvm use $(rvm current); } >/dev/null 2>&1\n' >> "$HOME/.bashrc.d/70-ruby"