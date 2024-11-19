# SAGA GIS completion

This repository aims at providing command line completion files for saga_cmd from the [SAGA GIS project](https://sourceforge.net/projects/saga-gis/).   
The use of completion speeds up writing complex command statements, reduces typing errors for parameters.

## Features

- completion support for tool libraries, tools and parameters
- detection of required order of tool libraries > tool >  parameters)
- support for libraries and toolchains 
- Bash and Zsh completion scripts
- detailed description for tool libraries, tools and parameters in Zsh
 
## Installation

Please have a look on how to install completion files on your system and shell setup and/or framework.
Bash typically requires a package called bash-completion. Zsh has completion support already built in via compinit.

## Files and supported SAGA versions

The completion scripts for Bash (saga_cmd.bash file) and Zsh (_saga_cmd file) are generated for a specific version of saga_cmd (see file headers). 

A universal completion file for bash (saga_cmd_dynamic.bash) is also available. This completion script generates all information necessary dynamically during the completion process. This version is considerably slower, but takes all libraries in the search path into account. This version can also be used in combination with libraries which are not part of the official SAGA distribution.

## Usage Notes 

- tool completion only recognizes tool identifiers
- tool name displayed as part of the provided suggestionsin Bash
