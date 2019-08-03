default: clean install copy zip

install: build_path
	pip install -r requirements.txt -t build

build_path:
	mkdir build

build_dist:
	mkdir dist

copy:
	cp -R StartLambda/* build/

zip: build_dist
	cd build && zip -r ../dist/lambda.zip .

clean:
	rm -rf build
	rm -rf dist

run_tests:
	bash run_tests_locally.sh