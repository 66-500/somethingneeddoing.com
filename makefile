clean:
	rm -rf $(CURDIR)/public/


build: clean
	hugo -D -F


upload: build
	rsync -rz --delete public/ patryk@somethingneeddoing.com:/usr/share/nginx/html/personal/

