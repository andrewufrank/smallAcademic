# First changes: Title and Picture

## Change the Title

The file `/data/settings.yml` contains two lines

```
sitename: "Blogg"
tradeoff: "Put a catchy tradeoff line here"
```
which define the title and the by-line. Change to your title for the blog and the by-line 

```
sitename: "Thinking"
tradeoff: "The blogs of AF"
```
Save the changed file and refresh your browser; you should see the changed title and by-line.

The `settings.yml` file is included in the project in the `project.yml` file in the `data:` entry as 
```
data:
  menu: 'file://./data/menu.yml'
  settings: 'file://./data/settings.yml'
```

and the actual values are injected in `templates/master.html`.

comment: change tradeoff to byline

## Browser cache

Your browser typically keeps copies of pages it has shown and shows them again when it determines 
that they are not changed. To see changed pages properly shown, it might be necessary to clear the browsers cache.
The installation of a tool to quickly clear the cache may be useful (for example, search for a browser add-on
called `clear cache`. 

Sprinkles caches the `project.yml` beyond a restart; when in doubt, get a clean start by using a new ip (i.e. call `sprinkesl -serve n`, with n increased by one each time,
and open `localhost n` appropriately).

comment: explain browser caching policy in docs.

## Replace picture

Copy a `jpg` file into `/static/img` (say `mountains.jpg`). It is references in the file `static/style.css`; 
replace the value `archipelago.jpg` with your value in 
```
.hero {
    padding: 0 1rem;
    background-image: url('/static/img/mountains.jpg');
    background-size: cover;
    background-position: 50% 80%;
    color: white;
    text-shadow: 2px 2px 8px black;
    font-weight: bold;
    vertical-align: top;
```

comment: how to determine the part of the image shown? How big should it be? What is the aspect ratio?
 
comment: the image name should not be in style.css.
