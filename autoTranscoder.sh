SRCDIR=/home/wentam/autoTranscoder/input/
DESTDIR=/home/wentam/autoTranscoder/output/
DONEDIR=/home/wentam/autoTranscoder/transcoded_inputs/
SCRIPTDIR=/home/wentam/autoTranscoder/transcode_scripts/

inotifywait -mq --format="%w%f" -e close_write $SRCDIR | while read file; do
	sh $SCRIPTDIR/*.sh $file $DESTDIR/$(basename -- "$file");
	mv $file $DONEDIR
done
