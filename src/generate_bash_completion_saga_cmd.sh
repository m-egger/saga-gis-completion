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
# This script is used to generate Bash command completion for saga_cmd.
# The generation used the SAGA GIS version installed on the system and reads all 
# available libraries and toolchains. 
# The completion file is written to the set OUTDIR. 
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# files and directories
# ------------------------------------------------------------------------------
BASEDIR=$(dirname "$0")
OUTDIR=$BASEDIR/out_bash
COMPLETION_FILE=$OUTDIR/saga.bash
TOOL_LIBRARIES=

# ------------------------------------------------------------------------------
# function section
# ------------------------------------------------------------------------------
_get_libraries(){
    local saga_tools=($(saga_cmd 2>/dev/null | grep " - " | tr -d "-" | tr -d "*" | tr -d "\n" ))
    local libs=($(echo "${saga_tools[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
    echo "${libs[@]}"
}

_get_tool_list(){
    local lib=$1
    local tools=$(saga_cmd $lib 2>/dev/null |  grep -E " \[[0-9a-z_]+\]" | tr $'\t' "-" | tr -d "[]'" | sed "s/^ //g" | tr ' ' '_')
    echo $tools
}

_get_tool_ids(){
    local lib=$1
    local tool_identifiers=$(saga_cmd $lib 2>/dev/null |  grep -E " \[[0-9a-z_]+\]" | cut -d "]" -f1 | tr -d "[] ")
    echo $tool_identifiers
}

_init_outdir(){
    if [ ! -d $OUTDIR ]; then
        mkdir $OUTDIR
    else
        rm -f $OUTDIR/*
    fi
}

_print_get_tool_list(){
    echo '_get_tool_list(){' >> $COMPLETION_FILE
    echo 'case $1 in ' >> $COMPLETION_FILE

        for lib in $tool_libs
        do
            echo "  $lib)" >> $COMPLETION_FILE
            echo '    echo "'$(_get_tool_list $lib)'"' >> $COMPLETION_FILE
            echo '    return' >> $COMPLETION_FILE
            echo '    ;;' >> $COMPLETION_FILE
        done
    echo 'esac' >> $COMPLETION_FILE
    echo '}' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_print_get_tool_ids(){
    echo '_get_tool_ids(){' >> $COMPLETION_FILE
    echo 'case $1 in ' >> $COMPLETION_FILE

        for lib in $tool_libs
        do
            echo "  $lib)" >> $COMPLETION_FILE
            echo '    echo "'$(_get_tool_ids $lib)'"' >> $COMPLETION_FILE
            echo '    return' >> $COMPLETION_FILE
            echo '    ;;' >> $COMPLETION_FILE
        done
    echo 'esac' >> $COMPLETION_FILE
    echo '}' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_print_is_lib(){
    echo '_is_lib(){' >> $COMPLETION_FILE
    echo '  for e in $tool_libs' >> $COMPLETION_FILE
    echo '  do' >> $COMPLETION_FILE
    echo '    if [ "$1" = "$e" ]; then' >> $COMPLETION_FILE
    echo '      echo 1' >> $COMPLETION_FILE
    echo '      return' >> $COMPLETION_FILE
    echo '    fi' >> $COMPLETION_FILE
    echo '  done' >> $COMPLETION_FILE
    echo '  echo "0"' >> $COMPLETION_FILE
    echo '}' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_print_get_tool_params(){
    echo '_get_tool_params(){' >> $COMPLETION_FILE
    echo 'local lib=$1' >> $COMPLETION_FILE
    echo 'local id=$2' >> $COMPLETION_FILE
    echo 'local key=${lib}_${id}' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
    echo 'case $key in ' >> $COMPLETION_FILE

        for lib in $tool_libs
        do
            for t in $(_get_tool_ids $lib)
            do
                local key=${lib}_${t}
                local params=$(saga_cmd $lib $t 2>/dev/null | grep "  -" | tr -d  "  " | cut -d ":"  -f 1)
                echo "  $key)" >> $COMPLETION_FILE
                echo '    echo "'$params'"' >> $COMPLETION_FILE
                echo '    return' >> $COMPLETION_FILE
                echo '    ;;' >> $COMPLETION_FILE
            done
        done
    echo 'esac' >> $COMPLETION_FILE
    echo '}' >> $COMPLETION_FILE

    echo '' >> $COMPLETION_FILE
}

_print_get_idx_of_lib(){
    echo '_get_idx_of_lib(){' >> $COMPLETION_FILE
    echo '  for ((i = 1; i < ${#words[@]} - 1; i++)); do' >> $COMPLETION_FILE
    echo '    if [[ "${tool_libs[*]}" = *"${words[i]}"* ]]; then' >> $COMPLETION_FILE
    echo '      echo "${i}"' >> $COMPLETION_FILE
    echo '      return' >> $COMPLETION_FILE
    echo '    fi' >> $COMPLETION_FILE
    echo '  done' >> $COMPLETION_FILE
    echo '  echo "0"' >> $COMPLETION_FILE
    echo '}' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_print_saga_opts(){
    echo 'saga_opts="-h -v -s -C -u -c -f"' >> $COMPLETION_FILE
    echo 'saga_opts_long="--help --version --story --config  --utf8 --cores --flags"' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_print_tool_libs(){
    echo 'tool_libs="'$tool_libs'"' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
}

_print_header(){
    echo '# saga_cmd bash completion file' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
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

_print_main_completion_function(){

    echo '_saga_completions(){' >> $COMPLETION_FILE
    echo '    local cur prev words cword split' >> $COMPLETION_FILE
    echo '_init_completion || return' >> $COMPLETION_FILE
    echo 'COMPREPLY=()' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
    echo 'local prev_is_lib=$(_is_lib $prev)' >> $COMPLETION_FILE
    echo 'local idx_of_lib=$(_get_idx_of_lib)' >> $COMPLETION_FILE
    echo 'local idx_of_tool=$(($idx_of_lib + 1))' >> $COMPLETION_FILE
    echo 'local lib=${words[$idx_of_lib]}' >> $COMPLETION_FILE
    echo 'local lib_tool_ids=$(_get_tool_ids $lib)' >> $COMPLETION_FILE

    echo 'local t_id=${words[$idx_of_tool]}' >> $COMPLETION_FILE
    echo 'local t_id_is_valid=$([[ "${lib_tool_ids}" = *"${t_id}"* ]] && echo 1 || echo 0)' >> $COMPLETION_FILE

    echo '   # case: only library name is given, completion for module nr, displays a combination of nr and name as choices list' >> $COMPLETION_FILE
    echo 'if [[ $idx_of_lib > 0 && $prev_is_lib -eq 1 ]]; then' >> $COMPLETION_FILE
    echo ' local tools=$(_get_tool_list $lib)' >> $COMPLETION_FILE
    echo ' local choices=($(compgen -W "$tools" -- "$cur"))' >> $COMPLETION_FILE

    echo '   if [ "${#choices[@]}" == "1" ]; then' >> $COMPLETION_FILE
    echo '     local number=$(echo ${choices[0]} | cut -f1 -d "-")' >> $COMPLETION_FILE
    echo '     COMPREPLY=("$number")' >> $COMPLETION_FILE
    echo '     return 0' >> $COMPLETION_FILE
    echo '   else' >> $COMPLETION_FILE
    echo '     COMPREPLY=("${choices[@]}")' >> $COMPLETION_FILE
    echo '     return 0' >> $COMPLETION_FILE
    echo '   fi' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
    echo '# case: library name and tool number is given, completion for paramters or file if previous is a parameter' >> $COMPLETION_FILE
    echo 'elif [[ $idx_of_lib > 0 && $t_id_is_valid -eq 1 ]]; then' >> $COMPLETION_FILE
    echo '  if [[ ${prev} == -* ]] ; then' >> $COMPLETION_FILE
    echo '    COMPREPLY=($(compgen -f -- "$cur"))' >> $COMPLETION_FILE
    echo '  else' >> $COMPLETION_FILE
    echo '     local params=$(_get_tool_params $lib $t_id )' >> $COMPLETION_FILE
    echo '    COMPREPLY=($(compgen -W "$params" -- "$cur"))' >> $COMPLETION_FILE
    echo '  fi' >> $COMPLETION_FILE
    echo '  return 0' >> $COMPLETION_FILE
    echo '# case: no library given, completion for flags when dash is detected' >> $COMPLETION_FILE
    echo 'elif [[ ${cur} == -* ]] ; then' >> $COMPLETION_FILE
    echo '  COMPREPLY=( $(compgen -W "${saga_opts} ${saga_opts_long}" -- ${cur}) )' >> $COMPLETION_FILE
    echo '  return 0' >> $COMPLETION_FILE
    echo '# case: no library given, completion for libraries' >> $COMPLETION_FILE
    echo 'elif [[ ${cur} == * ]] ; then' >> $COMPLETION_FILE
    echo '  COMPREPLY=( $(compgen -W "${tool_libs}" -- ${cur}) )' >> $COMPLETION_FILE
    echo '  return 0' >> $COMPLETION_FILE
    echo 'fi' >> $COMPLETION_FILE

    echo '} &&' >> $COMPLETION_FILE
    echo 'complete -F _saga_completions saga_cmd' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE
    echo '' >> $COMPLETION_FILE

}

# ------------------------------------------------------------------------------
# main section
# ------------------------------------------------------------------------------

tool_libs=$(_get_libraries)

_init_outdir

_print_header

_print_saga_opts
_print_tool_libs

_print_get_tool_params
_print_get_idx_of_lib
_print_is_lib
_print_get_tool_list
_print_get_tool_ids
_print_main_completion_function






