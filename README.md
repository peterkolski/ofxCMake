# CMake for OpenFrameworks
This is not an ofxAddOn in the normal way.
So do not just copy it into the `of/addons/` folder and expect it to work.

## Installation
1. Find your main openframeworks folder (e.g. `~/of/`)
2. Create there a subfolder `CMake`
3. Clone or extract the git files and folders into this folder.
4. In the file `of/CMake/project/CMakeLists.txt` change the path of your OF folder. 
## Usage

### Basic
1. Copy the file `of/CMake/project/CMakeLists.txt` into the folder of your openframeworks project 
2. In the 'CMakeLists.txt' change name of your application `APP_NAME`

## Addons
- Uncomment the internal addOn, you want to use

## CLion IDE usage
1. Prepare your project as explained above
2. Choose via CLion in the 'Open File or Project' the `CMakeLists.txt`

- A promt might ask, if you want to change the 'project root'. Ignore this
- In git, the CLion project files will be saved in  a '.idea' folder. If you want, you can ignore that in GIT.

## Compatibility
At the moment (Oct 2016) only Mac OS is supported
