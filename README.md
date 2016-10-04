# CMake for OpenFrameworks
This is not an ofxAddOn in the normal way.
So do not just copy it into the `of/addons/` folder and expect it to work.

## Installation
1. Find your main openframeworks folder (e.g. `~/of/`)
2. Create there a subfolder `CMake` -> `~/of/CMake/`
3. Clone or extract the git files and folders into this folder. You should have the following folders:
`of/CMake/addOns`
`of/CMake/libs`
`of/CMake/modules`
`of/CMake/project`
4. In the file `of/CMake/project/CMakeLists.txt` change the path of your OF folder. e.g. as the following:
``# ------------------------ OF Path -----------------------
set( OF_DIRECTORY ~/of/ )
``

## Usage

### Basic
1. Copy the file `of/CMake/project/CMakeLists.txt` into the folder of your openframeworks project (e.g. `~/of/apps/myApps/myProject`)
2. In the 'CMakeLists.txt' change name of your application `APP_NAME`
``# ------------------------- Names  -----------------------
project(        myProject )
set( APP_NAME   myUnbelievableApp)
``

### Addons (internal)
- Uncomment the internal addOn, you want to use
`# ------------------------ AddOns OF INTERNAL ------------
 set( OFX_ADDONS_ACTIVE
         ofxGui
 )
`

## CLion IDE usage

## Compatibility
