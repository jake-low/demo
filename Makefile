all: /www/index.html

/www/index.html: index.md
	markdown index.md > index.html
	echo "<p>Last built: $(date)</p>" >> index.html
	echo "<p>Commit hash: $(git rev-parse HEAD)</p>" >> index.html
