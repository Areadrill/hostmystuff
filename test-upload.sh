TMPFILE='/tmp/test-upload.tmp';
SIGNATURE=$(gpg --sign --output $TMPFILE './test-upload.sh');
LINK=$(curl -F"file=@$TMPFILE" localhost:8080)
$(rm $TMPFILE)

echo "$LINK"
