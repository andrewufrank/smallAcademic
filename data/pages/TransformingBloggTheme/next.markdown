# Move posts to own directory

The posts should be separated from other pages and move to a separate directory within the project.

## Create post directory and menu item

Create a directory and move the posts into it. Then add a menu item 
```
- label: "All Posts"
  url: "/allPosts"
```
## fill the Menu with the list for all posts

The `allPosts` must be filled with a rule after `/latest`:
```
- pattern: '/allPosts'
  data:
    posts:          # the variable name in postList.html
      type: 'dir'
      path:   './posts'  # the pattern from which to collect 
      fetch: 10
      order: '-mtime'  # why repeated from postList.html
  template:  'postList.html'
```
and a corresponding template (copied from `home.html` with an additional title line for debugging):
```
{% extends 'master.html' %}

{%- block content %}
    <h1>test postList 4</h1>
{% for post in posts|sort(by="mtime", reverse=true) %}
    {{ postPreview(post) }}
{% endfor %}
{% endblock -%}
```
The pagePreview in `home.html` gives small blocks of text, which seems less desirable for a complete list. The macro definitino in `templates/include/macros.html` is a copy of the `pagePreview` macro, with a changed css class (which need not exist, gives a single line by default).

## Prepare posts

The posts need a rule:
```
- pattern: '/posts/{{post:*}}'
  data:
    file: 'glob://./data/posts/{{post}}.*'
    post: 'file://./data/posts/{{post}}.*'
  required: [ 'post' ]   # property which must exist - always true? 
# when commented out gives no content 
  template: 'post.html'
```
which then requires a `post.html`, which is a copy of `page.html` with changes to call 
```
{%- extends 'master.html' -%}

{%- block title %}
     {{ pageTitle(post) }}
{% endblock -%}

{%- block content %}
    <h1>{{ pageTitle(post) }}</h1>
    post.html used 
    {{ removePageHeading(post) }}
    <hr>
    {{ post.props.mtimeUTC|date('%x') }}
{% endblock -%}
```
and a separate template, which is a copy of the `page.html` template.
 

