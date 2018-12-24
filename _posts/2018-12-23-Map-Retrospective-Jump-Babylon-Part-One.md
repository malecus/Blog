---
layout: post
author: Malecus
title: "Map Retrospective: jump_babylon, Part One"
summary: Let's go through the details of one of my oldest maps and see what went right and what didn't.
image: /assets/img/waterfall.jpg
---

I think it's important to reflect on where you've been and what decisions led you there. This uses the past to calibrate your vision for the future, and where you want to do things differently to achieve a different outcome. Let's go through one of my oldest maps and see what went right and what didn't.

# The Origin

I refer to [_jump_babylon_](https://www.youtube.com/watch?v=ZkpTv9rlIbE){:target="blank"} as my first "official" map, but it wasn't the first map I ever made; my _first_ map was [_jump_noname_](https://www.youtube.com/watch?v=jdKy5mVarj4){:target="_blank"}. This map solely existed for me to learn Hammer and produce _something_. I'd wanted to make a jump map for a long time, so I set a goal to make some kind of jump map with my week off from work. It was slow, painstaking, and frustrating, but I ended up making a map.

The first foray into anything new won't be amazing. The only way to get better is to dive in and start doing, since each subsequent effort will be better than the previous. I didn't try to make a pretty map, or anything really innovative. I wanted to learn Hammer. I had those other things in my head, but they didn't belong in the first map, since the scope would've been way too much for a total beginner like myself. They had a place in the future.

>It's important to control the scope of your project. If you're not careful, things can balloon out of control--this is called [feature creep](https://en.wikipedia.org/wiki/Feature_creep){:target="blank"} and can turn your project into an impossible feat. It's OK to cut things from the current project and earmark them for later ones. However, trying to put it all into the _next_ project can lead to [Second-system effect](https://en.wikipedia.org/wiki/Second-system_effect){:target="blank"}. There's nothing wrong with spreading out your cool features into many projects.

The map wasnt't great. I was a budding ctapper at the time and focused too much on far distances. Some of the jumps were too easy and made the difficulty curve confusing (looking at you, _two ascending skips_). The map was fullbright (please don't ever do this). It reflected my jumping skill at the time, rather than what most people's skills were. You can see this with my sloppy triple--that took me lots of tries.

Once I finished _jump_noname_, I thought about all that and began to consider what the _good_ version of this map would be. I looked at maps I liked, maps I didn't, and what about them were positive and negative. I accumulated a set of things I wanted for my map that would be a fun experience for the player, but also a better visual effort (_jump_noname_ didn't use dev textures, but changing them to anything else was the bare minimum effort I could've put in).

I decided to call _jump_noname_ complete and put those ideas into a new map, _jump_babylon_.

# Goals for jump_babylon

Here's a short list of what I didn't like about _jump_noname_.

* The lighting was _fullbright_, meaning everything was equally bright, had no shadows, and made it difficult to see where walls and edges met
* The visuals were too bare-bones and had no character
* The jumps were too basic
* I didn't like the difficulty curve

With a bit of Hammer experience under my belt, I could focus on these higher-level concepts. I wasn't stuck on the "Crap, how do I make a wall?" basics.

# Lighting Woes

So many maps suffer from bad lighting, and I don't just mean _fullbright_ lighting--they're way too dark. It's frustrating when you can't see what you're doing. This is not a feature for difficulty--it's poor planning, and it isn't fun.

The average map puts lights down the middle of hallways at regular intervals. This works, insofar as you can see where you're going. It doesn't work because you get inconsistent light levels--bright blotchy circles where the light entities are. The brightness contrast is jarring, and I didn't want that. It also seemed lazy as if the lighting weren't planned, but instead lights were placed where they'd be functional at best.

>When I say _planned lighting_, I'm referring to lighting that best suits the map's theme. If it's outdoors, I'd expect natural lighting, with the shadows not interfering with the brushes the player needs to jump on. If indoors, I'd look for physical light sources like lamps or lighting fixtures, or even light-illuminating panels.

Natural light is the other major option. With this one, you can get the light "for free," since it comes from the skybox, not lights you place. This isn't a silver bullet, since inattentive geometry can create huge shadows. Combine this with mismatched _light_environment_ settings and you can still create dark spots that make it tough to see. (Early versions of _jump_toxic_ had this problem.)

# Good Outdoor Lighting

Here's the issue:

**Intrusive shadows occur when your room walls are the same walls you jump on.**

Skybox light only travels at one angle, and this casts shadows behind geometry. A way to fix this is to lower the wall height to let in more light. This doesn't work if you want tall walls to jump against; taller walls _exascerbate_ the shadow problem, since taller walls block more light.

The solution is to separate room geometry from jump elements. This decoupling allows any room configuration (e.g. short walls to let in lots of light), while retaining tall walls for jump elements. More natural light is let in and this makes a brighter environment where the player can see properly--no unnatural light placement necessary.

>>>Add an annotated screenshot of early jump_toxic's first jump to illustrate the shadows

# To Be Continued...

So far I've taken you through my thought process from my first map and into my second map, reflecting on what worked and what I wanted to improve. I realized how to avoid overly dark areas with skybox light by making the jump elements separate from the room walls. I was beginning to see a blueprint in my head of what my next map was going to look like.

In the next post, we'll go through Babylon's visual style. See you there.
