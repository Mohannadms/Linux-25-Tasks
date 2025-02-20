grep -o "[[:alpha:]]\+" keys | sort | uniq -d > extracted_keys.txt
grep -o "www\.[[:alnum:][:punct:]]\+\|https\?[[:alnum:][:punct:]]\+" data.txt
grep -o "+\?[[:digit:]]\{12,13\}" data.txt
grep -o "[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,3\}\.[[:digit:]]\{1,2\}" data.txt
