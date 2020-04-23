FROM jekyll/jekyll

###
# TJN: 22apr2020 I had to make a few hacks to get things
#      to build cleanly on my laptop.  Not sure of root cause,
#      but this appeared to allow the image to build, etc.
###

COPY --chown=jekyll:jekyll Gemfile .
#COPY --chown=jekyll:jekyll Gemfile.lock .

RUN gem install update && gem install github-pages
#RUN bundle install --quiet --clean
RUN bundle install

#CMD ["jekyll", "serve"]
CMD ["bundle", "exec", "jekyll", "serve"]
