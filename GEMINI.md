# GEMINI.md#

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

Program is designed around a Friday, probably 8 may 2026, but could change. We created this event to be fammily-friendly, for people travelling with kids and for single people to enjoy the famous Rimini nightlife. Rimini is just in front the famous "Isola delle Rose" and is the capital of the famous "Riviera Romagnola", which used to be the Copacabana of Europe in the 1970s.

* Thursday afternoon: Workshops
* Friday: big day. Single track.
* friday evening: Toga party in a disco in the lively city of Rimini, full of joie de vivre!
* Saturday morning (optional): trip to the mouths of the Rubicon, close to where Caesar said the famous words "alea iacta est".

## Graphics

The CSS should have some sort of sea/river inspired color set, like scales of light blue.
Ideally text will be in black or white, depending on CSS color, and have bold ins the dark red of Ruby logo (not sure what it is).

## Feedback loop

* Before executing, create a PLAN.md, ask user to confirmm, and then re-read that plan, and execute upon it.
* Use github issues to track things to do, and complex activities.
* Use meaningful commits.  

## Push to prod

* A `git commit` results in a Netlify push and deploy.
* You can check the deployment if succesful or not, by curling/diffing the new changes on https://rubycon.netlify.app 
* Deployment takes around 5min. Deployment logs are available if you ask me. There's also an MCP server I havent configured yet.

## Documentation

* Whenever you do a change to the file, please update VERSION (bump version in `VERSION` with semantic versioning) and `CHANGELOG.md`.
* Since we're a few people, add the name of the coder to the changelog, like "* [riccardo] blah blah"
* also manually update the *Footer* of the jekyll site, This is NOT DRY until I code the `cat VERSION` in the footer.