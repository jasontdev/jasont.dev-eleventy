---
title: jasont.dev
tags: project
description: 'My professional website, blog and portfolio. Uses the Eleventy static site generator.'
layout: post.liquid
date: 2021-07-26 18:46:00 +10:00
cardimg: /img/projects/jasont.dev/jasont.dev_thumb.png
---
![Screenshot of jasont.dev rendered on mobile](/img/projects/jasont.dev/jasont.dev_thumb.png)  
*jasont.dev rendered on mobile.*  
### Purpose
The goal of my website is allow me to post blogs, tutorials, details about my projects, show my portfolio. 
However, as I am on a journey to becoming a professional 
web developer, the site not only needs to look professional
but be technically impressive too.  

### Using Eleventy
With this goal in mind, I decided to use the [Eleventy](https://www.11ty.dev/) static site generator. The beauty of Eleventy is that it
provides zero boilerplate: it's up to the developer to create the templates. Evelenty pursues this philosophy so thoroughly that the the creator, [Zach Leatherman](https://www.zachleat.com/) says he cannot tell which sites have 
been created using Eleventy.  
  
The benefit of this approach is that Eleventy delivers a 
near-complete seperation of concerns between template and content. In the templates, we work hard to create the layout, style etc. In the markdown files from which Eleventy, little to no though need be given to the layout
and styling.

### Hosting on GCP
Being a static site, the options available for hosting are
plentiful. My favourite approach for sites like this is to use a cloud storage bucket and load balancer. In this case, I'm using Google Cloud Platform for this but with Cloudflare in front to provide caching and DDOS protection
(and reduce costs).  
  
It would have been even more straightforward to use Netlify, Github Pages or even Eleventy Serverless to host as well as provide a CI/CD pipeline. However, a one person site, infrequently updated doesn't really cry out for a CI/CD pipline. When it's time to upload a new build, I just use `gsutil rsync -R` to sync the contents of the build directory with the GCP storage bucket. 
