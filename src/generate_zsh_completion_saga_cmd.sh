#!/bin/bash

# ------------------------------------------------------------------------------
# Copyright (c) 2024 Manfred Egger
#
# This software is released under the MIT License.
# See the LICENSE file for more details.
#
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2024 Manfred Egger
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# INFO:
# This script is used to generate Zsh command completion for saga_cmd.
# The generation used the SAGA GIS version installed on the system and reads all 
# available libraries and toolchains. 
# The completion file is written to the set OUTDIR. 
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# files and directories
# ------------------------------------------------------------------------------
BASEDIR=$(dirname "$0")
OUTDIR=$BASEDIR/out_zsh
COMPLETION_FILE=$OUTDIR/_saga_cmd
TOOL_LIBRARIES=

# ------------------------------------------------------------------------------
# function section
# ------------------------------------------------------------------------------
_get_library_list_entry(){
    local lib=$1
    local prefix="Description: "
    local desc=$(saga_cmd $lib 2>/dev/null | grep -m 1 "Description: " | tr -d "[]" | tr -d "'" | tr -d '"' )
    local info=${desc#"$prefix"}
    echo $lib'['$info']'
}

_get_tool_list_entry(){
    local lib=$1
    local id=$2

    local tool_desc=$(saga_cmd $lib 2>/dev/null |  grep -E " \[[0-9a-z_]+\]"  | grep "\[$id\]" | cut -d $'\t' -f2 | tr -d "'"  )
    echo $id'['$tool_desc']'
}

_write_library_include_file(){
    local lib=$1
    local file=$OUTDIR/${lib}.inc

    local tool_identifiers=$(saga_cmd $lib 2>/dev/null |  grep -E " \[[0-9a-z_]+\]" | cut -d "]" -f1 | tr -d "[] ")

   #print library function
   #######################

    echo "_${lib}(){" >> $file
    echo "  _arguments -C \"1: :->cmds\" \"*::arg:->args\" " >> $file
    echo " " >> $file
    echo '  case "$state" in' >> $file
    echo "    cmds)" >> $file
    echo '      _values "'${lib} 'command" \' >> $file

    for tool in $tool_identifiers
    do
            echo "  Generating entry: $lib $tool "
            echo '        "'$(_get_tool_list_entry $lib $tool)'" \'  >> $file
    done

    # needed for final backslash / newline
    echo "" >> $file
    echo "      ;;" >> $file
    echo "    args)" >> $file
    echo '      case "$line[1]" in' >> $file

    for tool in $tool_identifiers
    do
        echo "  Generating parameters: $lib $tool"
        # local params=$(saga_cmd $lib $tool  | grep "  -" | tr -d "\t"  | sed 's/[ ][ ]*/ /g' | tr "[" "(" | tr "]" ")" | tr ":" "[" | tr "\n" "]" | sed 's/ -/"-/g' | sed 's/\]/\]:file:_files" /g' )
        #fix for dashes in description
        local params=$(saga_cmd $lib $tool | grep "  -" | tr -d "\t"  | sed 's/^[ ][ ]*//g'  | sed 's/[ ][ ]*/ /g'  | sed 's/ -[ ]*/-/g'  | tr "[" "(" | tr "]" ")" | tr ":" "[" | sed 's/^-*/ -/g'  | tr "\n" "]" | sed 's/ -/"-/g' | sed 's/\]/\]:file:_files" /g')

        echo "        ${tool})" >> $file
        echo "          _arguments \\" >> $file
        echo "            $params " >> $file
        echo "          ;;" >> $file
    done

    echo "     esac" >> $file
    echo "     ;;" >> $file # args
    echo "   esac" >> $file # state
    echo "}" >> $file # lib function
    echo "" >> $file
}

_write_header(){
    echo '# ------------------------------------------------------------------------------' >> $COMPLETION_FILE
    echo '# Copyright (c) 2024 Manfred Egger' >> $COMPLETION_FILE
    echo '#' >> $COMPLETION_FILE
    echo '# This software is released under the MIT License.' >> $COMPLETION_FILE
    echo '# See the LICENSE file for more details.' >> $COMPLETION_FILE
    echo '#' >> $COMPLETION_FILE
    echo '# SPDX-License-Identifier: MIT' >> $COMPLETION_FILE
    echo '# SPDX-FileCopyrightText: 2024 Manfred Egger' >> $COMPLETION_FILE
    echo '# ------------------------------------------------------------------------------' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
    echo '# ------------------------------------------------------------------------------' >> $COMPLETION_FILE
    echo '# INFO:' >> $COMPLETION_FILE
    echo '# This script provides zsh command completion for saga_cmd.' >> $COMPLETION_FILE
    echo '# The completion requires the following order: ' >> $COMPLETION_FILE
    echo '# saga_cmd <opt> <library> <tool> <parameter>.' >> $COMPLETION_FILE
    echo '# ------------------------------------------------------------------------------' >> $COMPLETION_FILE
    echo '# '$(saga_cmd -v)' ' >> $COMPLETION_FILE
    echo '# ------------------------------------------------------------------------------' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_write_saga_cmd_file(){
    echo "#compdef _saga_cmd saga_cmd" >> $COMPLETION_FILE
    echo "" >> $COMPLETION_FILE
    _write_header
    echo '' >> $COMPLETION_FILE
    echo "_saga_cmd() {" >> $COMPLETION_FILE
    echo "  local line state" >> $COMPLETION_FILE
    echo '  _arguments -C "1: :->cmds" "*:: :->args"' >> $COMPLETION_FILE
    echo '  case "$state" in' >> $COMPLETION_FILE
    echo "    cmds)" >> $COMPLETION_FILE
    echo '      _values "saga_cmd commands" \' >> $COMPLETION_FILE

    for lib in ${TOOL_LIBRARIES[@]}
    do
            echo '        "'$(_get_library_list_entry $lib)'" \'  >> $COMPLETION_FILE
    done

    # needed for final backslash / newline
    echo "" >> $COMPLETION_FILE
    echo "      ;;" >> $COMPLETION_FILE
    echo "    args)" >> $COMPLETION_FILE
    echo '      case $line[1] in' >> $COMPLETION_FILE

    for lib in ${TOOL_LIBRARIES[@]}
    do
        echo "        ${lib}) " >> $COMPLETION_FILE
        echo "          _${lib} " >> $COMPLETION_FILE
        echo "          ;;" >> $COMPLETION_FILE
    done

    echo "      esac" >> $COMPLETION_FILE
    echo "      ;;" >> $COMPLETION_FILE
    echo "  esac" >> $COMPLETION_FILE
    echo "}" >> $COMPLETION_FILE
    echo "" >> $COMPLETION_FILE
    echo "" >> $COMPLETION_FILE
    echo "# individual tool library functions" >> $COMPLETION_FILE
    cat $OUTDIR/*.inc >> $COMPLETION_FILE
}

#create or clean output directory
_init_outdir(){
    if [ ! -d $OUTDIR ]; then
        mkdir $OUTDIR
    else
        rm -f $OUTDIR/*
    fi
}

# ------------------------------------------------------------------------------
# main section
# ------------------------------------------------------------------------------

_init_outdir

# parse installed tool libraries via saga_cmd
saga_tools=($(saga_cmd 2>/dev/null | grep " - " | tr -d "-" | tr -d "*" | tr -d "\n" ))
TOOL_LIBRARIES=($(echo "${saga_tools[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
lib_count=${#TOOL_LIBRARIES[@]}

# write include files for each library
i=1
for lib in ${TOOL_LIBRARIES[@]}
do
    echo "Processig $i of $lib_count : $lib"
    _write_library_include_file $lib
    i=$((i+1))
done

# write main completion file, all include files have to exist
_write_saga_cmd_file
# remove temporaray include files 
rm $OUTDIR/*.inc
