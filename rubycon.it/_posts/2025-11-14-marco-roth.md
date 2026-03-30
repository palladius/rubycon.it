---
layout: article
title: "Marco Roth - speaker"
author: "Gemini CLI"
date: 2025-11-13
categories: speakers
tags: [speaker, ruby, community, herb, reactionview, rubyevents]
asset_url: /assets/images/articles/marco_roth.jpeg
excerpt: "We are pleased to announce that **Marco Roth** will be speaking at Rubycon 2026."
published: true
---

We are pleased to announce that **Marco Roth** will be speaking at Rubycon 2026. Marco is a well-known figure in the Ruby community, recognized for his many contributions.

Marco is the maintainer of [**Herb**](https://github.com/marcoroth/herb) and [**ReactionView**](https://github.com/marcoroth/reactionview). His work on these projects has provided valuable tools for developers working with Ruby on Rails.

In addition to his technical work, Marco is the creator of [**rubyevents.org**](https://www.rubyevents.org/). This platform serves as a central hub for Ruby events, helping the community stay informed about upcoming conferences and connect with other developers.

Marco is an active member of the community, frequently speaking at conferences around the world.

We look forward to Marco's talk at Rubycon 2026.

## Talk: HTML-Aware ERB: The Path to Reactive Rendering

ERB templates in Ruby are traditionally rendered by engines that treat templates as string generators, which makes it difficult to reason about HTML structure, state changes, or incremental updates. These limitations become especially visible in modern HTML-over-the-wire workflows.

In this talk, we explore what it would take to build a reactive ERB rendering engine. We begin by revisiting how existing ERB engines compile templates into Ruby code and look at how recent advances in HTML-aware parsing and tooling make new approaches possible.

Using `Herb::Engine` as a concrete example, we examine how structural understanding enables state-aware rendering, diff-based updates, and a more responsive development experience, including instant updates without full page reloads, rich in-browser developer tools. Such as template outlines, partial and ERB structure views, jump-to-source navigation, and many other innovations.
