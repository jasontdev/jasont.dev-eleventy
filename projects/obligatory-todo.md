---
title: Obligatory Todo
tags: project
description: 'What developer portfolio could be complete without a to-do app? Uses React,
Firebase for persistence and authentication. Event-driven architecture.'
layout: post.liquid
date: 2021-09-03 18:46:00 +10:00
cardimg: /img/projects/obligatory-todo/obligatory-todo-screen.png
---
![Screenshot of jasont.dev rendered on mobile](/img/projects/obligatory-todo/obligatory-todo-screen.png)  
*Obligatory Todo rendered on mobile.*  
### Purpose
I wanted to do a first React/Firebase app using a trivial, well-trodden idea so I could
focus on exploring React and Google Firebase. Furthermore, what developer portfolio could be complete
without a to-do application?

### Beyond MVC
Prior to attempting this app, I had been working on a Spring MVC app. The MVC architecture is
a very straightforward approach to app design:
1. Take a template
2. Fetch data from database
3. Fill the template with said data
4. Render page.

Furthermore, Spring MVC dependency injection makes it relatively easy to logically seperate the tasks.  
### Event-driven architecture
This time around, using React, things would be completely different. The approach with Obligatory Todo is heavily asynchronous, with component state being updated not by 
request, but in response to Firebase data change events

For example, when a new Todo is added, the component containing the text input box, NewTodo, creates an object and stores it with Firebase. NewTodo doesn't update the TodoList component but rather, Firebase sends the object to a listener in the TodoList component. TodoList will then merge data into the component state.
  
![Adding new todo event cycle diagram](/img/projects/obligatory-todo/obligatory-todo-event-cycle.png)

So really, Firebase isn't just used for persistence, but acts as a global datastore within the application. While this sounds like it could be slow and expensive, Firebase itself is internally event driven and performs local caching so the app isn't bogged down waiting for data to be fetched from the database.
### Try it out
The application is deployed [here](https://todo.jasont.dev/) on Firebase and I'd love for you to try it out. Found a bug? Have a feature to suggest? Thinking of hiring me? Feel free to file an issue via the [Github repository](https://github.com/jasontdev/obligatory-todo).

