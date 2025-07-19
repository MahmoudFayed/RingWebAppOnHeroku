![Ring](https://ring-lang.github.io/theringlogo.jpg)

# Ring Programming Language

## Building using macOS

This version is tested using macOS Catalina (version 10.15)

### Get the source code

Using HTTP

	git clone http://github.com/ring-lang/ring.git

Or using SSH

        git clone git@github.com:ring-lang/ring.git


### Install homebrew (follow the directions on [homebrew's homepage](http://brew.sh/)).
	
### Install Libraries 
	
	cd ring/build
	./installdepmac.sh 

## Complete Build (Compiler/VM, Extensions, Tools, etc.)

This will build everything

	cd ring/build
	./buildclang.sh

### To be able to call ring from any folder 
	cd ring/bin
	sudo ./install.sh
	
### Run Ring Notepad
	
	ringpm run ringnotepad

## Custom Build
	
### Build Ring (Compiler/VM)
	
	./buildclang.sh

### Build Ring2EXE 

	cd ring/tools/ring2exe
	sudo ./build.sh	

### Generate RingConsoleColors Source Code and Build 
	
	cd ring/extensions/ringconsolecolors
	./gencode.sh
	./buildclang.sh

### Build RingInternet
	
	cd ring/extensions/ringinternet
	./buildclang.sh

### Generate RingLibCurl Source Code and Build 
	
	cd ring/extensions/ringcurl
	./gencode.sh
	./buildclang.sh

### Generate RingZip Source Code and Build 
	
	cd ring/extensions/ringzip
	./gencode.sh
	./buildclang.sh

### Build RingPM

	cd ring/tools/ringpm
	sudo ./build.sh	

### Build RingREPL

	cd ring/tools/ringrepl
	sudo ./build.sh	

### Build Folder2QRC

	cd ring/tools/folder2qrc
	sudo ./build.sh	

### Build RingODBC
	
	cd ../extensions/ringodbc
	./buildclang.sh

### Build RingMySQL
	
	cd ring/extensions/ringmysql
	./buildclang.sh

### Build RingSQLite
	
	cd ring/extensions/ringsqlite
	./buildclang.sh

### Generate RingPostgreSQL Source Code and Build 
	
	cd ring/extensions/ringpostgresql
	./gencode.sh
	./buildclang.sh

### Build RingOpenSSL
	
	cd ring/extensions/ringopenssl
	./buildclang.sh

### Build RingMurmurHash
	
	cd ring/extensions/ringmurmurhash
	./buildclang.sh
	
### Generate RingAllegro Source Code and Build 
	
	cd ring/extensions/ringallegro
	./gencode.sh
	./buildclang.sh

### Generate RingLibuv Source Code and Build 
	
	cd ring/extensions/ringlibuv
	./gencode.sh
	./buildclang.sh

### Generate RingFreeGLUT Source Code and Build 
	
	cd ring/extensions/ringfreeglut
	./gencode.sh
	./buildclang.sh

### Generate RingOpenGL Source Code and Build 

The ringopengl folder contains many sub folders for different OpenGL versions
Starting from OpenGL 1.1 to OpenGL 4.6
	
	cd ring/extensions/ringopengl/opengl21
	./gencode.sh
	./buildclang.sh
	
### Generate RingQt Source Code and Build
	
	cd ring/extensions/ringqt
	./gencode_light.sh
	./buildclang_light.sh
	./gencode.sh
	./buildclang.sh

### To be able to call ring from any folder 
	cd ring/bin
	sudo ./install.sh
	
### Run Ring Notepad
	
	ringpm run ringnotepad

### More Extensions

The previous steps demonstrates building Ring and some of the Ring extensions.

There are more extensions in ring/extensions folder like RingCJSON, RingHTTPLib, etc.
