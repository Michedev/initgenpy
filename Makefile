genexecutable:
	cp main.py initgenpy
	sed  -i '1i #!/usr/bin/python\n' initgenpy

install: genexecutable
	sudo cp initgenpy /usr/bin/
	sudo chmod +x /usr/bin/initgenpy
	rm initgenpy