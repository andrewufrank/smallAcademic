# Isolating the theme from the content

By theme I understand all the arrangements which influence rendering and I 
want to separate the theme from the content, which is data to be rendered. 
Isolating the theme is a step to help people to concentrate on the content 
and to allow to copy a theme from one site to another. The term is used 
by Pelican SSG and others. 

## Create a theme folder and move static inside

The static folder contains the image at the top, the style.css. It can be moved
into a new `theme.folder` created in the project folder. The change required is 
in the `project.yml`:
```
# the static page for image and style.css
- pattern: '/static/{{file:**}}'
  data:
    file: 'file://./theme/static/{{file}}'
  static: true
```
## Templates
The `.html` files which determine the rendering is hard coded. To move it into
`theme` requires two small changes in the code. 

## Change Homepage and CV menu
The homepage should give some the welcome text and remove the Favorites menu.
```
- label: "Home"
  url: "/welcome"
```
Attach to the CV top menu a contact page requires just inserting a label:
```
- label: "CV"
  url: "/cv/minimalCV"
  sub:  ...
```


## Change name in code from tradeof to byline
Needs just an edit in master.html and settings.yml. While I am at it, add 
a value for author in settings. 

Comment: How to use the value in markdown text?

## Change sub-menus downwards
The submenus of CV be vertically, not horizontally listed. 
