FROM gitpod/workspace-full:latest

USER gitpod
WORKDIR /base-rails

COPY Gemfile /base-rails/Gemfile
COPY Gemfile.lock /base-rails/Gemfile.lock

# RUN /bin/bash -l -c "gem install bundler -v 2.1.4 --default"
# RUN /bin/bash -l -c "gem update --system"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH
RUN /bin/bash -l -c "bundle install"
