# Makefile
.PHONY: css
css:
	mkdir -p bundle
	postcss --watch --use autoprefixer --use postcss-import css/app.css --output bundle/app.css
	postcss --watch --use autoprefixer --use postcss-import css/exercise_flexbox.css --output bundle/exercise_flexbox.css

.PHONY: server
server:
	#WARNING: The indentation MUST be a tab. Spaces won't work.
	browser-sync start --server --files='*.html,bundle/*.css'

.PHONY: clean
clean:
	rm -r bundle


