
list:
    just -l

# This wont work until you have installed just, so its a silly circular dependency :) which AI can fix.
install:
    npm install -g nodemon

# needs to run from rubycon.it - TODO --watch
run-local-p4002:
    cd rubycon.it/ && JEKYLL_LOG_LEVEL=info bundle exec jekyll serve  --port 4002 --watch  --livereload 2>&1 | tee log/last-run.log
run-local-p4002-future:
    cd rubycon.it/ && JEKYLL_LOG_LEVEL=info bundle exec jekyll serve  --port 4002 --watch  --livereload --future 2>&1 | tee log/last-run.log

run: run-local-p4002

test:
    cd rubycon.it/ && bundle exec rake test


version:
    egrep "^site_version: " rubycon.it/_config.yml | sed 's/site_version: //g' | tr -d '"'

clean:
    cd rubycon.it/ && bundle exec jekyll clean

# New Gemini feature from 28aug25 - auto edit!
gemini:
    gemini -c --approval-mode auto_edit

# Watches _config.yml and restarts the server on change. Requires nodemon.
# Usage: just dev
dev:
    nodemon --watch rubycon.it/_config.yml --ext yml --exec "just run-local-p4002"


# CUJ_MODE=TEST_SOBENME gemini -p -c # then add this '/cuj:execute-single cuj03'


gemini-execute-cuj-test03:
    CUJ_MODE=INTERACTIVE gemini --checkpointing --approval-mode yolo -p '/cuj:execute-single cuj03'
gemini-execute-cuj-test02:
    CUJ_MODE=INTERACTIVE gemini --checkpointing --approval-mode yolo -p '/cuj:execute-single cuj02'

# To be used in GH actions or otherwise headless environments.
gemini-execute-cuj-test-daemon:
    CUJ_MODE=DAEMON gemini --approval-mode yolo -c -p '/cuj:execute-single cuj04'

