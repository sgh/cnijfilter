#dirs = libs cngpij cngpijmon ppd pstocanonij 
dirs = libs lgmon cngpij cngpijmnt pstocanonij backend backendnet cngpijmon/cnijnpr

scripts=for dir in $(dirs); do\
			(cd $$dir; ./autogen.sh ; make $$target)|| exit 1;\
		done

all :
	$(scripts)

clean :
	target=clean; $(scripts)

install :
	target=install; $(scripts)

