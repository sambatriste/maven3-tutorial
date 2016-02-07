#!/bin/bash
ORG_FILES=*.org
for org_file in $ORG_FILES
do
    echo "Processing ${org_file} file..."
    emacs --batch -q --no-site-file -l org --visit ${org_file} --funcall org-html-export-to-html
done

echo "done."
