#!/bin/bash
# Automatically generate/update markdown files for
# Localization files in the ./locales/[language]/ folder
# Prerequisit: pip install mdpo

width=25564

po2md -v

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
    targetmdfilepath=docs/locales/$dir/$mdfile #Add target directory to mdfile

    echo "Converting $pofile to $mdfile"
    rm $targetmdfilepath
    po2md $mdfilepath --md-encoding utf-8 -p $pofilepath -q -w $width -s \
    $targetmdfilepath

  done
done
