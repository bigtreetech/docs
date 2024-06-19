#!/bin/bash
# This script extracts the Klipper translations and builds multiple
# mdocs sites - one for each supported language.  See the README file
# for additional details.

MKDOCS_DIR="docs/_biqumkdocs/"
WORK_DIR="work/"
TRANS_DIR="${WORK_DIR}docs/"
TRANS_FILE="${TRANS_DIR}active_translations"
MKDOCS_MAIN="${MKDOCS_DIR}mkdocs-main.yml"

# Fetch translations
git clone --depth 1 https://github.com/bigtreetech/docs ${TRANS_DIR}

# Create new mkdocs-main.yml with language links
cp ${MKDOCS_DIR}mkdocs.yml ${MKDOCS_MAIN}
while IFS="," read dirname langsite langdesc langsearch; do
  sed -i "s%^.*# Alternate language links automatically added here$%    - name: ${langdesc}\n      link: /${langsite}/\n      lang: ${langsite}\n\0%" ${MKDOCS_MAIN}
done < <(egrep -v '^ *(#|$)' ${TRANS_FILE})

# Build main English website
echo "building site for en"
mkdocs build -f ${MKDOCS_MAIN}

# Build each additional language website
while IFS="," read dirname langsite langdesc langsearch; do
  new_docs_dir="${WORK_DIR}lang/${langsite}/docs/"
  locale_dir="${TRANS_DIR}/docs/locales/${dirname}"

  # read toc
  title=$(sed -n '1p' ${locale_dir}/Navigation.md)
  BTT=$(sed -n '3p' ${locale_dir}/Navigation.md)
  Motherboards=$(sed -n '5p' ${locale_dir}/Navigation.md)
  SKR_Series=$(sed -n '7p' ${locale_dir}/Navigation.md)  
  Octopus_Series=$(sed -n '9p' ${locale_dir}/Navigation.md)  
  Manta_Series=$(sed -n '11p' ${locale_dir}/Navigation.md)  
  EBB_Series=$(sed -n '13p' ${locale_dir}/Navigation.md)  
  MMB_Series=$(sed -n '15p' ${locale_dir}/Navigation.md)  
  IOT=$(sed -n '17p' ${locale_dir}/Navigation.md)
  Displays=$(sed -n '19p' ${locale_dir}/Navigation.md)
  Motor_Drives=$(sed -n '21p' ${locale_dir}/Navigation.md)
  TMC_Series=$(sed -n '23p' ${locale_dir}/Navigation.md)
  EZ_Series=$(sed -n '25p' ${locale_dir}/Navigation.md)
  Modules=$(sed -n '27p' ${locale_dir}/Navigation.md)
  Software_Tutorials=$(sed -n '29p' ${locale_dir}/Navigation.md)
  BIQU=$(sed -n '31p' ${locale_dir}/Navigation.md)
  Panda_series=$(sed -n '33p' ${locale_dir}/Navigation.md)  
  Panda_Hotend=$(sed -n '35p' ${locale_dir}/Navigation.md)  
  Panda_Flow=$(sed -n '37p' ${locale_dir}/Navigation.md)  
  X1=$(sed -n '39p' ${locale_dir}/Navigation.md)  
  P1=$(sed -n '41p' ${locale_dir}/Navigation.md)  
  Panda_Revo=$(sed -n '43p' ${locale_dir}/Navigation.md)  
  X1=$(sed -n '45p' ${locale_dir}/Navigation.md)  
  P1=$(sed -n '47p' ${locale_dir}/Navigation.md)  
  Panda_Claw=$(sed -n '49p' ${locale_dir}/Navigation.md)  
  Extruders=$(sed -n '51p' ${locale_dir}/Navigation.md)  
  Hotends=$(sed -n '53p' ${locale_dir}/Navigation.md)  
  Sensor_modules=$(sed -n '55p' ${locale_dir}/Navigation.md)  
  Printers=$(sed -n '57p' ${locale_dir}/Navigation.md)  
  tools=$(sed -n '59p' ${locale_dir}/Navigation.md)
  Cooling_solution=$(sed -n '61p' ${locale_dir}/Navigation.md)  
  
  # Copy markdown files to new_docs_dir
  echo "Copying $dirname to $langsite"
  mkdir -p "${new_docs_dir}"
  cp "${locale_dir}"/*.md "${new_docs_dir}"
  echo "copy resources"
  cp -r docs/img "${new_docs_dir}"
  #cp -r docs/prints "${new_docs_dir}"
  cp -r docs/_biqumkdocs "${new_docs_dir}"

  # manually replace index.md if a manual-index.md exist
  manual_index="${new_docs_dir}manual-index.md"
  if [[ -f "${manual_index}" ]]; then
    mv -f "${manual_index}" "${new_docs_dir}index.md"
    echo "replaced index.md with manual_index.md for $langsite"
  else
    echo "Manually translated index file for $langsite not found!"
  fi

  # Create language specific mkdocs-lang-xxx.yml file
  echo "create language specific mkdocs configurations for ${langsite}"
  new_mkdocs_file="${new_docs_dir}_biqumkdocs/mkdocs-lang-${langsite}.yml"
  cp "${MKDOCS_MAIN}" "${new_mkdocs_file}"

  echo "replace search language"
  sed -i "s%^    lang: en$%    lang: ${langsearch}%" "${new_mkdocs_file}"

  echo "replace site language"
  sed -i "s%^  language: en$%  language: ${langsite}%" "${new_mkdocs_file}"

  echo "replace toc"
  sed -i "s%BIGTREETECH documentation$%${title}%" "${new_mkdocs_file}"
  sed -i "s%BTT:$%${BTT}:%" "${new_mkdocs_file}"
  sed -i "s%Motherboards:$%${Motherboards}:%" "${new_mkdocs_file}"
  sed -i "s%SKR Series:$%${SKR_Series}:%" "${new_mkdocs_file}"
  sed -i "s%Octopus Series:$%${Octopus_Series}:%" "${new_mkdocs_file}"
  sed -i "s%Manta Series:$%${Manta_Series}:%" "${new_mkdocs_file}"
  sed -i "s%EBB Series:$%${EBB_Series}:%" "${new_mkdocs_file}"
  sed -i "s%MMB Series:$%${MMB_Series}:%" "${new_mkdocs_file}"
  sed -i "s%IOT:$%${IOT}:%" "${new_mkdocs_file}"  
  sed -i "s%Displays:$%${Displays}:%" "${new_mkdocs_file}"    
  sed -i "s%Motor Drives:$%${Motor_Drives}:%" "${new_mkdocs_file}"
  sed -i "s%TMC Series:$%${TMC_Series}:%" "${new_mkdocs_file}"  
  sed -i "s%EZ Series:$%${EZ_Series}:%" "${new_mkdocs_file}"   
  sed -i "s%Modules:$%${Module}:%" "${new_mkdocs_file}"   
  sed -i "s%Software Tutorials:$%${Software_Tutorials}:%" "${new_mkdocs_file}"
  sed -i "s%BIQU:$%${BIQU}:%" "${new_mkdocs_file}"
  sed -i "s%Panda series:$%${Panda_series}:%" "${new_mkdocs_file}"
  sed -i "s%Panda Hotend:$%${Panda_Hotend}:%" "${new_mkdocs_file}"
  sed -i "s%Panda Flow:$%${Panda_Flow}:%" "${new_mkdocs_file}" 
  sed -i "s%X1:$%${X1}:%" "${new_mkdocs_file}"    
  sed -i "s%P1:$%${P1}:%" "${new_mkdocs_file}"  
  sed -i "s%Panda Revo:$%${Panda_Revo}:%" "${new_mkdocs_file}"    
  sed -i "s%X1:$%${X1}:%" "${new_mkdocs_file}"    
  sed -i "s%P1:$%${P1}:%" "${new_mkdocs_file}"  
  sed -i "s%Panda Claw:$%${Panda_Claw}:%" "${new_mkdocs_file}"    
  sed -i "s%Extruders:$%${Extruders}:%" "${new_mkdocs_file}"  
  sed -i "s%Hotends:$%${Hotends}:%" "${new_mkdocs_file}"   
  sed -i "s%Sensor modules:$%${Sensor_modules}:%" "${new_mkdocs_file}"
  sed -i "s%Printers:$%${Printers}:%" "${new_mkdocs_file}"   
  sed -i "s%tools:$%${tools}:%" "${new_mkdocs_file}"    
  sed -i "s%Cooling solution:$%${Cooling_solution}:%" "${new_mkdocs_file}"

  # Build site
  echo "building site for ${langsite}"
  mkdir -p "${PWD}/site/${langsite}/"
  ln -sf "${PWD}/site/${langsite}/" "${WORK_DIR}lang/${langsite}/site"
  mkdocs build -f "${new_mkdocs_file}"
done < <(egrep -v '^ *(#|$)' ${TRANS_FILE})
