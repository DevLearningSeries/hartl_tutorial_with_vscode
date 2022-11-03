FROM gitpod/workspace-postgres
USER gitpod

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' \
    && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
    && apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends postgresql-client universal-ctags \
    && apt-get autoremove -y && apt-get clean -y
# RUN _ruby_version=ruby-3.1.2 \
#     && printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
#     && bash -lc "rvm reinstall ruby-${_ruby_version} && rvm use ruby-${_ruby_version} --default && rvm @global do gem install 'bundler:2.3.13' -N rails -N webdrivers -N solargraph -N reline -N overcommit -N reek -N brakeman -N rubocop -N rubocop-performance -N rubocop-rails -N rubocop-faker -N rubocop-rspec -N ripper-tags -N better_errors -N debug -N binding_of_caller -N gem-wrappers -N rufo -N scss_lint -N"
# RUN printf "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc \
#     && printf '{ rvm use $(rvm current); } >/dev/null 2>&1\n' >> "$HOME/.bashrc.d/70-ruby"

RUN printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
    && su vscode -l -c "source /etc/profile.d/rvm.sh && rvm reinstall ruby-3.1.2" \
    && su vscode -l -c "source /etc/profile.d/rvm.sh && rvm gemset globalcache enable"
RUN su vscode -l -c "source /etc/profile.d/rvm.sh && rvm use ruby-3.1.2 --default && rvm @global do gem install 'bundler:2.3.13' -N webdrivers -N solargraph -N reline -N overcommit -N reek -N brakeman -N rubocop -N rubocop-performance -N rubocop-rails -N rubocop-faker -N rubocop-rspec -N ripper-tags -N better_errors -N debug -N binding_of_caller -N gem-wrappers -N rufo -N scss_lint -N" \
    && su vscode -l -c "source /etc/profile.d/rvm.sh && rvm cleanup all && rvm repair all"