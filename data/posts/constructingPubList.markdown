# Constructing the publication list

## BibTex file

The data used to produce the are likely already available in your BibTex file and can be exported from there. A useful list should give a visitor some means to search the list and to give for each entry the BibTex file to copy into your visitors BibTex file - you want to make it as easy as poissible to reference your work! - and to download the full text - again, you want it to make it easy for your visitor to obtain you work and (hopefully) find it interesting and cite it. 

A BibTex file can be converted to html with the export facility of Jabref and with a small tool produced by Marc Schenk here include you get a good looking (not yet adapted to the appearance 
of your homepage style) and functional list. Check it out under "Publications"!

## Step by step
1. In Jabref under Options -> Manage customs exports insert the file `listrefs.layout' from the folder 'MarkSchenk-jabref-export/listRefsWithFile'. Add a telling name, e.g. 'listrefsWithFile' and the desired type (i.e. 'html'). 

1. Select the publications you want to include in the list (either a complete list or a partial list, featuring, for example, publications on a specific topic or year) and select 'export selected entries' and select the type (e.g. `listrefs`) and name the file. 

1. Move the html files you have produced and move them into 'data/staticData' - the example shows allEntries.html for a complete list and 'selectedEntries.html' for a selection. 

1. Go to 'publications/publicationsStart.markdown' and enter the url link to the files you have pasted. Be careful to write the link as `/staticData/allEntries.html`. 
