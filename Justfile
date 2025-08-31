
list:
    just -l

# This wont work until you have installed just, so its a silly circular dependency :) which AI can fix.
install:
    sudo apt install just

# needs to run from rubycon.it - TODO --watch
run-local-p4002:
    cd rubycon.it/ && JEKYLL_LOG_LEVEL=info bundle exec jekyll serve  --port 4002 --watch  --livereload 2>&1 | tee log/last-run.log
# run-local-p4003-watch:
#     cd rubycon.it/ && bundle exec jekyll serve  --port 4003 --watch

test:
    cd rubycon.it/ && bundle exec rake test


version:
    egrep "^version: " rubycon.it/_config.yml | sed 's/version: //g'

clean:
    cd rubycon.it/ && bundle exec jekyll clean

# New Gemini feature from 28aug25 - auto edit!
gemini:
    gemini -c --approval-mode auto_edit

# Watches _config.yml and restarts the server on change. Requires nodemon.
# Usage: just dev
dev:
    nodemon --watch rubycon.it/_config.yml --ext yml --exec "just run-local-p4002"


gemini-execute-cuj-test:
    CUJ_MODE=INTERACTIVE gemini -p -y '/cuj:execute-single cuj03'

# To be used in GH actions or otherwise headless environments.
gemini-execute-cuj-test-daemon:
    CUJ_MODE=DAEMON gemini -y -c -p '/cuj:execute-single cuj04'
