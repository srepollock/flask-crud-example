setup:
	python3 -m venv .venv
	( \
		. .venv/bin/activate; \
		pip3 install -r requirements.txt; \
	)
	@printf "Don't forget to source the virtualenv\n"
start:
	docker build -t python_mysql .
	docker run -it -rm -p 3306:3306 python_mysql
	python3 main.py