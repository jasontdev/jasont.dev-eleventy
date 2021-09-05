---
title: Obligatory Todo
tags: project
description: 'What developer portfolio could be complete without a to-do app? Uses React,
Firebase for persistence and authentication. Event-driven architecture.'
layout: post.liquid
date: 2021-09-03 18:46:00 +10:00
cardimg: /img/projects/obligatory-todo/oblig_todo_screen.png
---
![Screenshot of jasont.dev rendered on mobile](/img/projects/obligatory-todo/oblig_todo_screen.png)  
*Obligatory Todo rendered on mobile.*  
### Purpose
I wanted to do a first React/Firebase app using a trivial, well-trodden idea so I could
focus on exploring React and Google Firebase. Furthermore, what developer portfolio could be complete
without a to-do application?

### Architecture
Prior to attempting this app, I had been working on a Spring MVC app. The MVC architecture is
a very straightforward approach to app design:
1. Take a template
2. Fetch data from database
3. Fill the template with said data
4. Render page.

Furthermore, Spring MVC dependency injection makes it relatively easy to logically seperate the tasks.  
  
This time around, using React, things would be completely different. The approach with Obligatory Todo is heavily asynchronous, with component state being updated not by 
request, but in response to Firebase data change events.
