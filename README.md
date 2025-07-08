Boost libraries - trimmed down for shadPS4
========================================

This is a subset of Boost v1.82.0 generated using the bcp tool. To get a list of boost modules guaranteed to exist, check the `boost_libs.txt` file. This is intended to be used with the shadPS4 emulator.

Updating this repo
==================

To update the Boost version (or to add a new library) follow these steps:

  1. Download Boost and extract the package, then `cd` to the `boost_1_xx_0` directory. If you are on Windows, use PowerShell.
      ```
      git clone https://github.com/boostorg/boost
      ```
  1. Checkout to a specific boost version and init submodules. For example, for boost 1.82:
      ```
      git checkout boost-1.82.0
      git submodule update --init --recursive
      ```
  1. Build the `bcp` tool:
    * Windows
      ```
      .\bootstrap.bat
      .\b2 tools\bcp
      ```
    * Linux
      ```
      ./bootstrap.sh
      ./b2 tools/bcp
      ```
  1. Store the boost directory in a variable for later use:
    * Windows
      ```
      $boost_dir = $pwd
      ```
    * Linux
      ```
      export boost_dir=$(pwd)
      ```
  1. Add bcp to your path: (The correct output path should be printed by b2 during the build, this is an example. Don't include the `bcp` executable name at the end, just the path to the directory containing it.)
    * Windows
      ```
      $env:Path += ";$boost_dir\bin.v2\tools\bcp\msvc-14.3\release\link-static\threading-multi"
      ```
    * Linux (don't forget the `:PATH` at the end)
      ```
      export PATH="$boost_dir/bin.v2/tools/bcp/gcc-15/release/link-static:$PATH"
      ```
  1. `cd` to this repo's directory (shadPS4's `ext-boost`, it is important you stay in the same terminal session to not lose your env vars.)
  1. Remove the existing boost by removing the `boost` and `libs` dirs. (This is only necessary if doing a Boost version upgrade, in case they removed any files in the new version.)
  1. If doing a boost version update, also remember to update the boost version on this README to keep it consistent,
  1. Now you can modify `boost_libs.txt` to add/remove libraries.
  1. Build a new trimmed down distro.
    * Windows
    ```
    .\build.cmd $boost_dir
    ```
    * Linux
    ```
    ./build.sh $boost_dir
    ```
  1. You may need to modify `CMakeLists.txt` to adjust include dirs.
  1. Add/remove all files in git and commit.
