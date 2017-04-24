#!/bin/bash
rm content
find . -maxdepth 1 -type d -exec html-gen2.sh {} \;

awk 'NR==FNR { a[n++]=$0; next }
/PUT_SECTION_HERE/ { for (i=0;i<n;++i) print a[i]; next }
1' content pres-html.html > /tmp/xx && mv /tmp/xx pres-html.html

awk 'NR==FNR { a[n++]=$0; next }
/PUT_SECTION_HERE/ { for (i=0;i<n;++i) print a[i]; next }
1' content pres-pdf.html > /tmp/xx && mv /tmp/xx pres-pdf.html
