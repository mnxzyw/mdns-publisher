all:
	find . -name '*.py' -type f ! -executable -exec python -m compileall {} \;

clean:
	find . -name '*.pyc' -type f -delete
	find . -name __pycache__ -type d -delete
	rm -rf build dist *.egg-info

.PHONY: all install clean
