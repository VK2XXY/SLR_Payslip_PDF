#!/bin/bash
# Usage: remove all pdf file password

pdfpass=17061966

shopt -s nullglob
for f in *.pdf
do
	echo "Removing password for pdf file - $f"
        qpdf --decrypt --password="$pdfpass" "$f" ./decrypted/$f
done

