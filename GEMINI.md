# About

We're planning a simple static website in Jekyll for a ruby event called Rubycon.
the name is a pun on Ruby and Conference and the Rubicon river, where Caesar uttered the words "alea iacta est".

## the event

The event will take place on May 8th 2026 in rimini, italy.

## the website

The website needs to be static, and to have a minimal set of information for:

* Sponsors
* Speakers (CfP)
* Schedule
* some marketing material, loogistics, ..

## Schedule

Program is designed around a Friday, probably 8 may 2026, but could change. We created this event to be family-friendly, for people travelling with kids and for single people to enjoy the famous Rimini nightlife. Rimini is just in front the famous "Isola delle Rose" and is the capital of the famous "Riviera Romagnola", which used to be the Copacabana of Europe in the 1970s.

* Thursday afternoon: Workshops
* Friday: big day. Single track.
* friday evening: Toga party in a disco in the lively city of Rimini, full of joie de vivre!
* Saturday morning (optional): trip to the mouths of the Rubicon, close to where Caesar said the famous words "alea iacta est".

## Graphics

The CSS should have some sort of sea/river inspired color set, like scales of light blue.
Ideally text will be in black or white, depending on CSS color, and have bold ins the dark red of Ruby logo (not sure what it is).

## Feedback loop

* Before executing, create a `PLAN.md`, ask user to confirm, and then re-read that plan, and execute upon it.
* Use github issues to track things to do, and complex activities.
* Use meaningful commits.
* Do NOT run the server yourself. all long-running events will be run by user. If you need to check log, note that `just run..` logs under `rubycon.it/log/*.log`.

## Push to prod

* A `git commit` results in a Netlify push and deploy.
* You can check the deployment if successful or not, by curling/diffing the new changes on https://rubycon.netlify.app
* Deployment takes around 5min. Deployment logs are available if you ask me. There's also an MCP server I havent configured yet.
* DO NOT `git push` before running `just test` and confirming with user its ok to push.

## Documentation

* Whenever you do a change to the file, please update the `version:` field in `rubycon.it/_config.yml` (with semantic versioning) and `CHANGELOG.md`.
* Since we're a few people, add the name of the coder to the changelog, like "* [riccardo] blah blah". Make usre to know the current developer's name, by checking `$USER`, `whoami`, and such. In unsure, ask the usre and remember until the end of the session cos its their computers.
* if Unsure, use `just version` to retrieve current version.

## Testing

All test suite should be utterable from `just test`. Code should be in `test/`. We should test everything, mostly keeping in mind the production state of this. We should ensure that this website
is up and running. Tests should be partially deterministic (from DNS assert www.rubycon.it is up and running) and partially LLM-definable ("Ensure the program is consistent and happens in year 2026").

## UI

If you change something about the UI, for instance testing a new skin, or the blue green banner is too high, ... please use `playwright` MCP to navigate to pages.
* Local pages are in localhost on port 4002 as seen in the `justfile`.
* Always confirm with user if they're satisfied before committing and pushing, as LLMs are not great at UI feedback as of today.

## Implementation

For any non-trivial task you are given, do NOT jump to implementation. Instead, do this:

1. Create a file under `doc/plans/YYYYMMDD-$short_task_name.md`.
2. This plan should have a number of simple subtasks; you can use numbers like 1,2,3,4.. to define those.
3. This plan should be reviewed by human, and you should NOT execute until there's quiescence (user is happy and plan is updated and LLM re-reads the edited plan).
4. Each subtask should have TWO properties:
   1. Be **easily testable** (the end of task 3 should be trivially testable by user with some sort of grep/curl/... or LLM).
   2. Be **easily revertable**. We can use micro git commits across tasks, maybe using the task number in the initial part of the commit, or use Gemini CLI checkpoints.

## Commits

* Before committing, increment site_version in `rubycon.it/_config.yml` and add the changes to `CHANGELOG.md`.
* Use proper emojis in Roman theme. Also use semantics from `gitmoji`.
* If an issue is mentioned, update the GH issue after commit, and add the commit hash to the comment, so its beautifully linked.
* Github repo is `github.com/palladius/rubycon.it`. Use this repo for PRs and Issues.
* If pointed to work on issue 12, or https://github.com/palladius/rubycon.it/issues/12, use `gh` to do it.
