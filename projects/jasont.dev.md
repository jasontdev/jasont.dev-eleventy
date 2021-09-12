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
  
![Diagram showing process of building AWS](/img/projects/jasont.dev/jasontdev-build-process.png)

### Hosting on AWS
Being a static site, the options available for hosting are
plentiful. My favourite approach for sites like this is to use a cloud storage bucket and load balancer. In this case, I'm using a web-hosting enabled AWS S3 bucket with CloudFront providing
edge-caching and DDOS protections.
  
![Diagram of AWS infrastructure used to host jasont.dev](/img/projects/jasont.dev/jasontdev-hosting-diagram.png)
  
Unfortunately, updating content with CloudFront is currently cumbersome. When content is updated on the S3
bucket, CloudFront will not update until the edge-distributed content expires. Because this site
has low/infrequent, a short edge content expiry time will not help reduce load on the S3 bucket.  

The current solution is to create a CloudFront content invalidation after updating content 
on the S3 bucket, forcing CloudFront to distribute the updated content to the edge. In future,
this can be automated by using a script to create an invalidation for the content that updates
during S3 sync, or by moving the build process to a CodePipeline.