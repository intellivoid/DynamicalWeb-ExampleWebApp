clean:
	rm -rf build

build:
	mkdir build
	ppm --no-intro --compile="src" --directory="build"

update:
	ppm --generate-package="src"

install:
	ppm --no-intro --no-prompt --fix-conflict --install="build/net.intellivoid.example_web_application.ppm"

install_fast:
	ppm --no-intro --no-prompt --fix-conflict --skip-dependencies --install="build/net.intellivoid.example_web_application.ppm"
