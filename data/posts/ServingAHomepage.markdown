# Serving a homepage

Constructing a simple homepage, perhaps with a blog and some images is 
can be done in a few hours, possibly days 
with a tool like wordpress. To make something a bit more personal, 
satisfying some special requirements takes a bit of planning of content
and how it can be served. In another [blog]() I have presented my ideas for content
of an academic homepage for a university researcher. Here, I want to address the techncal 
issues.


## Separate content from style

The data should be separated from the style of presentation, to 
- allow changes in the data without entanglement in the typically tricky descriptions of style,
- changes in the style must be applied regularly on all content and should not require 
editing already existing data.

## Avoid  databases and achieve versioning with a tool like Git
In a the past, the dominant method for any but the simplest homepage was a content
management system (CMS) which dynamically constructed webpages from content 
stored in a database system and rendered it with HTML.

Managing databases is complex, especially when the database is accessible in some
form from the internet and thus exposed to the attacks of the hackers of the world. 
Database management systems are prepared for many situations and avail very complex
approaches to multiple levels of security - typically difficult to learn and often 
in your way when you try to achieve something slightly out of the ordinary. 
Loading data into databases and unloading to move to a different system is typically
difficult, due to the small, confusing differences between todays Relational DBMS.

Storing the data in text files, which can be edited by any of the well known text editors,
is less expensive (in terms of acquisition and learning of programs) 
and moving data between systems is a breeze (or at least complexity is reduced to
file transfer and conversion). 

Editable text files must be supplemented with some form of version management 
and backupt system. 
Git is the (nearly) universal tool for this, widely available and familiar to most 
programmers. 

## Inexpensive services to host your web site
Services providing you with your own web address, some space to store your web site 
and seving it to users typing your web address in their browser can be constructed with 
open source software (e.g. cPanel), some standard hardware and a fast connection to the internet. 

Important is to check that you are not committed to a specific host but use only 
services which are widely available, allowing you to move to another provide for 
any reason, technical, serivce or cost. You want to avoid all the traps, the providers 
set for you to obtain "essential" additional services, accumulated step by step 
each for a "small monthly fee". The base services, i.e. all which is 
really "essential",  are availble for a Euro 2 .. 5 per month. 

Generating your web site statically on you own hardware and upload the resulting files 
with an ftp trans (e.g. filezilla) is by far the least expensive solution. 

## Limitation of Static Site Generation - complement with email 
A purely static site generation produces all web pages ahead of time; 
obviously interaction with your readers are excluded or must be achieved using 
other communicatin channels. For low traffic, personal webpages and blogs with 
few comments, email can be used by the readers to send you comment which you then post
to the site for other readers to see togther with your answers. 
There exist software to streamline the process. 

## Interface
Managing a small website requires tools for 
- editing content, usually a text editor and markdown language is sufficient.
- backup and version management to keep your data secure; can be achieved with Git. 
- transfer of data from your computer to the host, with FTP and a tool like filezilla
- rendering the data in style; best achieved with selecting one of the available "themes"
available for your SSG engine. 

# Conclusion
Using one of the static site generators (SGG) together with some tools to 
backup and keeping versions of your site is likely all what is required. 
All the tools are available as Open-Source software. Popular is Jekyll, but modern (easier) systems like Hugo, which has a very structured, simple user interace (written in go)
and Pelican (written in Python) using a standardized "Theme" language (Jinja2).

The necessary service to serve your content on a fast internet link is available 
together with your web address for less than Euro 5/month. 

Check for: 
- static generatin of the site.
- provider with ftp or ssh access for upload of data.
- content written in markdown language.


