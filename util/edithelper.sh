#!/bin/bash
#
# Some helper functions I use to make editing easier.
#

function _edit()
{
    echo "Editing $1 (converting to $2.md)"
    html2text --unicode-snob --decode-errors=replace $1 > $2.md
    cat ../util/generic-footer.md | sed -e "s/%%LINK%%/$CATEGORY\/$1/" >> $2.md
    ${EDITOR} $2.md
    IFS='_' read -ra AUTHOR <<< "$1"
    # Convert to slug format
    NEW_FILENAME=$(head -1 $2.md | sed -e 's/^# //' | iconv -t ascii//TRANSLIT | sed -E s/[^a-zA-Z0-9]+/-/g | sed -E s/^-+\|-+$//g)
    # Note that we move it anyway regardless of whether you like it or not
    read -p "OK to move $2.md to $AUTHOR-$NEW_FILENAME.md? "
    mv $2.md $AUTHOR-$NEW_FILENAME.md
}

# editentries <category> derpy-1990s-html-*.html

function editentries()
{
    CATEGORY=$1
    echo "Editing category: $CATEGORY"
    shift
    while (( "$#" ));
    do
        MDNAME=$(echo $1 | sed -e 's/\.htm.*$//')
        if [[ ! -e $MDNAME.md ]]; then
            _edit $1 $MDNAME
        else
            echo "$MDNAME.md exists, skipping"
        fi
        shift
    done
}

# missingentry <author> <QUOTED title>
# missingentry Kedian "Derpy Derp"

function missingentry()
{
    AUTHOR=$1
    NEW_FILENAME=$(echo $2 | iconv -t ascii//TRANSLIT | sed -E s/[^a-zA-Z0-9]+/-/g | sed -E s/^-+\|-+$//g)
    echo "creating placeholder for ${AUTHOR}, ${2} in ${AUTHOR}-${NEW_FILENAME}.md"
    cat ../util/missing.md | sed -e "s/%%AUTHOR%%/${AUTHOR}/" | sed -e "s/%%TITLE%%/${2}/" > ${AUTHOR}-${NEW_FILENAME}.md
}
