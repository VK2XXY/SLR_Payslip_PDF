#!/bin/bash
# Usage: remove all pdf file password

pdfpass=XXXXXXXX

shopt -s nullglob
for f in *.pdf
do
	echo "Removing password for pdf file - $f"
        qpdf --decrypt --password="$pdfpass" "$f" ./decrypted/$f
done

