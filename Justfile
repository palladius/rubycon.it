
list:
    just -l

# This wont work until you have installed just, so its a silly circular dependency :) which AI can fix.
install:
    sudo apt install just

# needs to run from rubycon.it
run-local:
    cd rubycon.it/ && bundle exec jekyll serve --livereload --port 4001

