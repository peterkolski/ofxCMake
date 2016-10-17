# CMake for OpenFrameworks
CMake is a universal, plattform independent build system. It tells which source files and libraries of OpenFrameworks and your project have to be compiled together so you have your application. CMake is supported e.g. by the IDEs: CLion, QTCreator, KDevelop.

CMake is a meta system, so it can generate different build systems like Visual Studio Projects, xCode, make etc. It can also create installers like DEP, RPM and MSI. 

### Note
This is not an ofxAddOn in the normal way.
So do not just copy it into the `of/addons/` folder and expect it to work.

## Installation
1. Find your main openframeworks folder (e.g. `~/of/`)
2. Create there a subfolder `CMake`
3. Clone or extract the git files and folders into this folder.
4. In the file `of/CMake/project/CMakeLists.txt` change the path of your OF folder. 

## Usage

### Preperation
1. Copy the file `of/CMake/project/CMakeLists.txt` into the folder of your openframeworks project 
2. In the `CMakeLists.txt` change name of your application `APP_NAME`
3. If you have more source files than the standard `main.cpp`, `ofApp.cpp` – be sure to include them in the section "Source Files" of the 

### Command Line
- Create a new directory in your project folder – e.g.: `mkdir build`
- Go into that folder and type `cmake ..`
- Then compile via `make` (optional `-j4` to compile with 4 cores)

### CLion IDE
1. Prepare your project as explained above
2. Choose via CLion in the 'Open File or Project' the `CMakeLists.txt`

- A promt might ask, if you want to change the 'project root'. Ignore this
- In git, the CLion project files will be saved in  a '.idea' folder. If you want, you can ignore that in GIT.

## Addons
#### Internal Addons
- Uncomment the internal addOn, you want to use

#### External Addons
*This approach is static and centralised. Is not a perfect solution, but it lets your openFramework file structure untouched, if you want to remove CMake. Future approach might include a configuration file in each new AddOn*

- Create an addon-file `ofxNAME.cmake` from the templates in `CMake/addOns`
- Copy the file into `CMake/addOns/external`
- Add the path to the file `CMake/modules/addOnsExternal.cmake` – like e.g. 
`include( ${OF_DIRECTORY_ABSOLUTE}/CMake/addOns/external/ofxNAME.cmake )`
- Add the name of your addOn into your projects `CMakeLists.txt` in the section `AddOns`


## Compatibility
At the moment (Oct 2016) only Mac OS is supported. The infrastructure for other OS (Linux, Windows) is already set up.

Tested on MacOS 10.11.6 with cMake 3.2.1
