all: /www/index.html

/www/index.html: index.md
	markdown index.md > /www/index.html
	echo "<p>Last built: $$(date)</p>" >> /www/index.html
	echo "<p>Commit hash: $$(git rev-parse HEAD)</p>" >> /www/index.html
