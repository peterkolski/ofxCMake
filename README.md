![ofxCMake Logo](ofxCMake_Logo.jpg)

# CMake for OpenFrameworks
[CMake](https://cmake.org) is a universal, plattform independent build system. It tells which source files and libraries of OpenFrameworks, your project and addOns have to be compiled together so you have your application. CMake is supported e.g. by the IDEs: [CLion](https://www.jetbrains.com/clion/), [QTCreator](https://www.qt.io/ide/), [KDevelop](https://www.kdevelop.org).

CMake is a meta system, so it can generate different build systems like Visual Studio Projects, xCode, make etc. It can also create installers like DEB, RPM and MSI. 

### *Note*
This is not an ofxAddOn in the normal way.
So do not just copy it into the `of/addons/` folder and expect it to work.

## Installation
1. Find your main openframeworks folder (e.g. `~/of/`)
2. Create there a subfolder `CMake`
3. Clone (or extract) the git files and folders into this folder.
   
   ```bash
	$ cd of
	$ mkdir CMake
	$ git clone https://github.com/BildPeter/ofxCMake.git CMake
	```
4. In the file `of/CMake/project/CMakeLists.txt` change the path of your OF folder. 

## Usage

### Preperation
1. Copy the file `of/CMake/project/CMakeLists.txt` into the folder of your openframeworks project 
2. In the `CMakeLists.txt` change name of your application `APP_NAME`
3. If you have more source files than the standard `main.cpp`, `ofApp.cpp` – be sure to include them in the section "Source Files" of the 

### Command Line
- Create a new directory in your project folder – e.g.: `mkdir build`
- Go into that folder 
- type `cmake ..`
- **Compile:**  `make` (optional `-j4` to compile with 4 cores)

	```bash
	$ cd of/apps/myApps/newApp
	$ mkdir build
	$ cd build
	$ cmake ..
	$ make -j4
	```
- **Generate IDE files:** e.g. for xCode `cmake -G Xcode ..`
### CLion IDE
1. Prepare your project as explained above
2. Choose via CLion in the 'Open File or Project' the `CMakeLists.txt`

- A promt might ask, if you want to change the 'project root'. Ignore this
- In git, the CLion project files will be saved in  a '.idea' folder. If you want, you can ignore that in GIT.



## Addons
#### Internal Addons – *Usage*
- Uncomment the internal addOn, you want to use in the `CMakeLists.txt` of your project

#### External Addons – *Creation*
*This approach is static and centralised. It is not a perfect solution, but it lets your openFramework file structure untouched, if you want to update OpenFrameworks or remove CMake. Future approach might include a configuration file in each new AddOn*

- Create an addon-file `ofxNAME.cmake` from the templates in `CMake/addOns`
- Copy the file into `CMake/addOns/external`
- Add the path to the file `CMake/modules/addOnsExternal.cmake` – like e.g. 
`include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/external/ofxNAME.cmake )`
- Add the name of your addOn into your projects `CMakeLists.txt` in the section `AddOns`

## Development Philosophy
- The project file `CMakeLists.txt` is simplified for readability.
- A modular file approach (each OS has it's own .cmake files), so understanding of the code and version control is easier
- Having all ofxCMake files in one folder (including addOns) has the advantage:
	- Can easily be installed
	- OpenFrameworks can be updated, without having to do changes in the openframeworks and the CMake folders
- Down sides:
	- The addOn files are not placed in the addOns itself (but in `of/addons/`). It would be better, if each addOn has it's .cmake file already included. But this would mean, that the developer deliver it in their source code. 

## Compatibility
At the moment (Oct 2016) only Mac OS is fully tested. 

The infrastructure for other OS (Linux, Windows) is already set up.

Tested on MacOS 10.11.6 with cMake 3.2.1
