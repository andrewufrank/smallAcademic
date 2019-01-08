# Add to menu

## Add a single menu item

In `pages/menu.yml` add
```
- label: "About me"
  url: "/aboutMe"
```
at the end. 

Insert a file `data/pages/aboutMe.markdown` and fill in some text. 

When you renew the browser, the new menu item is added and when clicked shows the text. 

## Add a menu item with sub-items

In `pages/menu.yml` add
```
- label: "CV"
  sub:
  - label: "Long CV"
    url: "/cv/longCV"
  - label: "Publications"
    url: "/cv/publications"
```
above the entry for `Favorites`. Add two markdown files in a subfolder to pages (i.e. in `data/pages/cv`). 

The `project.yml` file needs a new rule for the `cv` subdirectory: 
```
- pattern: '/cv/{{page:*}}'
  data:
    file: 'glob://./data/pages/cv/{{page}}.*'
    page: 'file://./data/pages/cv/{{page}}.*'
  required: [ 'page' ]
  template: 'page.html'
```

comment: what is the difference between file: and page: ? what does required?

When you renew the browser, the new menu with two sub-item is added and when clicked shows the texts. 

- comment: the menu items are side-by side, not a list. 
- comment: how to make them a drop down list? 
- comment: the subdir cv is shown as a blog in latest 
 
