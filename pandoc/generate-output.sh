#!/bin/bash

working_dir=~/projects/Business-Analysis-Forms-WIP

# epub
# pandoc --toc -f markdown -t epub <(find $working_dir -name '*.md' -exec cat {} +) -o $working_dir/output/output.epub


cd $working_dir

files="'BA Tools Catalogue.md'"

files+=" 'BA 1 Strategize/*.md'"



# files="BA Tools Catalogue.md" \
#   " $working_dir/BA 1 Strategize/*.md" \
  # $working_dir/"BA 2 Investigate"/*.md \
  # $working_dir/"BA 3 Perspectives/"*.md \
  # $working_dir/"BA 4 Needs"/*.md \
  # $working_dir/"BA 5 Options"/*.md \
  # $working_dir/"BA 6 Requirements"/*.md \
  # $working_dir/"BA 7 Change"/*.md \
  # $working_dir/"Business Model Canvas"/*.md \
  # $working_dir/"Project 1 Initiating"/*.md \
  # $working_dir/"Project 2 Planning"/*.md \
  # $working_dir/"Project 3 Executing"/*.md \
  # $working_dir/"Project 4 Control"/*.md \
  # $working_dir/"Project 5 Closing"/*.md \
  # $working_dir/"Stakeholders"/*.md \
  # $working_dir/"Requirements"/*.md

echo "List of input files is " $files



echo "Outputting..."
output_file=$working_dir/output/output.epub

echo "pandoc --toc -f markdown -t epub -o" $output_file $files

pandoc --toc -f markdown -t epub -o $output_file $files

# pdf -- generating PDF is not working
# pandoc --toc -f markdown -t latex --latex-engine=xelatex <(find $working_dir -name '*.md' -exec cat {} +) -o $working_dir/output/output.pdf


# pandoc --toc -f markdown -o output/output.pdf \
#   "BA Tools Catalogue.md" "BA 1 Strategize"/*.md "BA 2 Investigate"/*.md \
#   "BA 3 Perspectives/"*.md "BA 4 Needs"/*.md "BA 5 Options"/*.md \
#   "BA 6 Requirements"/*.md "BA 7 Change"/*.md "Business Model Canvas"/*.md \
#   "Project 1 Initiating"/*.md "Project 2 Planning"/*.md "Project 3 Executing"/*.md \
#   "Project 4 Control"/*.md "Project 5 Closing"/*.md




# HTML
# pandoc --toc -f markdown -o output/output.html \
#   "BA Tools Catalogue.md" "BA 1 Strategize"/*.md "BA 2 Investigate"/*.md \
#   "BA 3 Perspectives/"*.md "BA 4 Needs"/*.md "BA 5 Options"/*.md \
#   "BA 6 Requirements"/*.md "BA 7 Change"/*.md "Business Model Canvas"/*.md \
#   "Project 1 Initiating"/*.md "Project 2 Planning"/*.md "Project 3 Executing"/*.md \
#   "Project 4 Control"/*.md "Project 5 Closing"/*.md


echo $output_file
