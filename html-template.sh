#!/bin/bash
echo Enter Project name
read pName
currPath=$(pwd)
echo "Project will be created at-->  "$currPath 
OPTIONS=("Y" "N")
select opt in "${OPTIONS[@]}"
do
  case $opt in
    "Y")
      mkdir -p "$currPath/$pName/"{css,js,img}
      touch "${currPath}/${pName}/index.html"
      touch "${currPath}/${pName}/js/scripts.js"
      touch "${currPath}/${pName}/css/styles.css"
      {
        echo '<!DOCTYPE html>'
        echo '<html>'
        echo '  <head>'
        echo '    <meta charset="UTF-8">'
        echo '    <title>Welcome</title>'
        echo '    <link rel="stylesheet" href="css/styles.css">'
        echo '  </head>'
        echo '  <body>'
        echo '    <div>'
        echo '      <h1>My first header</h1>'
        echo '    </div>'
        echo '    <script src="js/scripts.js"></script>'  
        echo '  </body>'
        echo '</html>'
      } >> "$pName"/index.html

      echo Successfully created!
      tree "$currPath/$pName"
      break
      ;;
    "N")
      echo "I Quit :("
      break
      ;;
    *) echo "invalid option $REPLY";;
  esac
done

  

