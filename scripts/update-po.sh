#!/bin/bash
# Automatically generate/update gettext files for
# Localization files in the ./locales/[language]/ folder
# Prerequisit: pip install mdpo

md2po -v

for dir in docs/locales/*/; do

  dir=${dir%*/}
  dir=${dir##*/}

  echo "Updating $dir"
  for file in docs/*.md; do

    mdfile=${file/docs\//} #Remove docs/
    mdfilepath=docs/$mdfile #add docs/

    if [ $dir = "en" ]; then
      pofile=${mdfile//.md/.pot} #replace .md with .pot
    else
      pofile=${mdfile//.md/.po} #replace .md with .po
    fi

    pofilepath=docs/locales/$dir/LC_MESSAGES/$pofile #Add target directory
    #to pofile
    targetmdfile=docs/locales/$dir/$mdfile #Add target directory to mdfile
    echo "Converting $mdfile to $pofile"
    md2po $mdfilepath --md-encoding utf-8 --po-encoding utf-8 -q -s -c \
    -d "Content-Type:text/plain; charset=UTF-8" --save --po-filepath $pofilepath
  done
done
