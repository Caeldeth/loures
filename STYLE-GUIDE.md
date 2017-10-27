# A Guide to Library Formatting

_by Kedian in **Dark Ages**_  
Deoch 151

## Formatting Overview

### Naming Conventions

Filenames must begin with the author’s in-game name (e.g. `Angelique`,
`Kedian`, `Swonko`) and should have a portion of the title, rendered as
`[A-Za-z0-9]`, separated by dashes. For instance, "Angelique, A Guide To
Derping" might be rendered as `Angelique-A-Guide-To-Derping.md`. It is our
intent to migrate filenames to slug format.

### Format

We use Markdown. Specifically,
[Github Flavored Markdown](https://guides.github.com/features/mastering-markdown/),
more specifically, [CommonMark](http://commonmark.org/). All documents must
render cleanly in Markdown.

### Header

All entries should begin with the following header:

```
# <Title of Work>

_by First Name Of Character in **Dark Ages**_  
_Titles / Date of Entry / Etc_

```

Example:

```
# A Guide to Derping

_by Angelique in **Dark Ages**_
_Holder of the Sacred Chalice of Riix_  
_Deoch 151_
```

would render as:

# A Guide to Derping

_by Angelique in **Dark Ages**_  
_Holder of the Sacred Chalice of Riix_  
_Deoch 151_

Remember to end lines with forced breaks with two spaces (see below).

### Text

* Start by converting the HTML to Markdown. We recommend
  [html2text](https://pypi.python.org/pypi/html2text), and you can use it as
  follows: `html2text --unicode-snob --decode-errors=replace foobar.html >
  foobar.md`

* Lines should not be overly long. Less than 80 characters.

* Markdown elements (paragraphs, headers, etc) should only be separated by one
  blank line. In general, ALL text should not require or use newlines as
  stylistic implements; everything should be rendered with the same flow (one
  blank newline between elements). Example:

  ```
  ## Lorum ipsum dolor sit amet
    
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 
  enim ad minim veniam, quis nostrud exercitation ullamco laboris 
  nisi ut aliquip ex ea commodo consequat. 

  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 
  enim ad minim veniam, quis nostrud exercitation ullamco laboris 
  nisi ut aliquip ex ea commodo consequat. 

  ## Consectetur adipiscing elit

  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 
  enim ad minim veniam, quis nostrud exercitation ullamco laboris 
  nisi ut aliquip ex ea commodo consequat. 

  ```

* Ending a line with two spaces will create a newline. This can be used for a
  variety of purposes (multiple lines in the header), or quotations (see
  below).

* `> _<text>_` is the preferred format for nice looking quotations. Example:

  ```
  > _Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
  > eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 
  > enim ad minim veniam, quis nostrud exercitation ullamco laboris 
  > nisi ut aliquip ex ea commodo consequat_.    
  > \- _Burg Hurg IV, Lord Burglehurg_
  ```
  would render as:
  
  > _Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
  > eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 
  > enim ad minim veniam, quis nostrud exercitation ullamco laboris 
  > nisi ut aliquip ex ea commodo consequat_.  
  > \- _Burg Hurg IV, Lord Burglehurg_

* Out of character text (e.g. ((foobar)) ) should be rendered as `monospace
  text`, using \` . You can leave the parenthesis.

* Headers should always have a newline before and after them, meaning:

  ```
  barbar  
  # foo
  barbar
  ```

  is not correct, but

  ```
  barbar
  
  # foo
  
  barbar
  ```
  
  is.

* Headers must not be used for styling, but should indicate natural headings
  and subheadings. This means that headers should flow from `#` to `##` and
  `###` and further, in all cases. `#` with `###` as a subheading is not
  correct.

* If a header has no text underneath it - consider collapsing it. Example:
  prefer `## Foo (Bar)` to `## Foo \n ### Bar`.

* Lists of references to other works should be put into tables. Where possible,
  they should be Library links. Example:

  ```
  | Author | Work                  |
  |--------|-----------------------|
  | Foobar | [Foo Bar](Foo-Bar.md) |
  ```

* If an author refers to another *recognized* Library work in their own, link
  to it, if it exists. If not, link to where it is online, and open an issue
  for us to include it here.

### Images

* The Library supports three image formats: GIF (ONLY for animations), PNG, and
  SVG.

* Images should be placed in the `images` subfolder for a Library section (e.g.
  `Philosophy/images`. Recommended names are `<Author>-<Work>-<name>.png`, for
  instance `Angelique-Derping-hurrdurr.png`. Image naming rules are not
  strictly enforced, but the filename should be unique and unlikely to collide
  with future image names.

### Video

* WebM should be used for video.
* Flash is not allowed. 
  * If an entry is Flash-only, it will not be included.
  * If an entry has a Flash intro video or supplementary Flash video content,
    it should be rendered to WebM and the text should be rendered in the normal
    `.md` format.

### Footer

We use consistent footers throughout all entries. The current format is as
follows:

    ***
    
    ```
    *Librarian Notes*

	[Treasure text]
	
    This entry has been edited to conform to Library formatting.
    The original can be found at [URL] .
    ```

This renders as:

***
    
```
*Librarian Notes*

This entry has been edited to conform to Library formatting.
The original can be found at [URL] .
```

For a work that is a treasure of Temuair, indicate that with 

`This work is one of the greatest treasures of Temuair.` 

in place of `[Treasure text]` above. The URL for the original work should
replace `[URL]`.

## Acceptable Terminology

In general, entries should not refer to the real world. This means that game
mechanics such as HP/MP are better rendered as `health` or `mana`. A way to do
this might be `Increases your strength ((+2 STR))`.

## English Standards

Due to the usage of `Aeon` in the (Seanchas
Temuair)[./History/Extant-Seanchas-Temuair], among other foundational
documents, we recommend the usage of `aeon` rather than `eon`. In general,
although Temuair draws from many influences including Earth’s own medieval
societies, American English is the preferred language of the library.

In general, if arcane words are encountered in speech (such as a quotation, or
someone speaking dialogue), they should be preserved. Usage of British English
in other places can be "corrected" at the discretion of the editor.
