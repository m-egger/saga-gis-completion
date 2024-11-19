# saga_cmd bash completion file

# ------------------------------------------------------------------------------
# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2024 Manfred Egger
#
# This software is released under the MIT License.
# See the LICENSE file for more details.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# INFO:
# This script provides bash command completion for saga_cmd.
# The completion lists are generated dynamically during execution, using all
# tool libraries available in the search path.
# The completion requires the order: saga_cmd <library> <tool> <parameter>.
# ------------------------------------------------------------------------------
# SAGA version compatibility: universal
# ------------------------------------------------------------------------------


_get_libraries(){
    local saga_tools=($(saga_cmd 2>/dev/null | grep " - " | tr -d "-" | tr -d "*" | tr -d "\n" ))
    local libs=($(echo "${saga_tools[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
    echo "${libs[@]}"
}

_get_idx_of_lib(){
    for ((i = 1; i < ${#words[@]} - 1; i++)); do
        if [[ "${tool_libs[*]}" = *"${words[i]}"* ]]; then
            echo "${i}"
            return
        fi
    done
    echo "0"
}

_is_lib(){
    for e in $tool_libs
    do
        if [ "$1" = "$e" ]; then
            echo 1
            return
        fi
    done
    echo "0"
}

_get_tool_params(){
    local lib=$1
    local t=$2
    local params=$(saga_cmd $lib $t 2>/dev/null | grep "  -" | tr -d  "  " | cut -d ":"  -f 1)
    echo $params
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

_saga_completions(){
    local cur prev words cword split
    _init_completion || return
    COMPREPLY=()

    local tool_libs=$(_get_libraries)
    local saga_opts="-h -v -s -C -u -c -f"
    local saga_opts_long="--help --version --story --config  --utf8 --cores --flags"

    local prev_is_lib=$(_is_lib $prev)
    local idx_of_lib=$(_get_idx_of_lib)
    local idx_of_tool=$(($idx_of_lib + 1))
    local lib=${words[$idx_of_lib]}
    local lib_tool_ids=$(_get_tool_ids $lib)
    local t_id=${words[$idx_of_tool]}
    local t_id_is_valid=$([[ "${lib_tool_ids}" = *"${t_id}"* ]] && echo 1 || echo 0)

    # case: only library name is given, completion for module nr, displays a combination of nr and name as choices list
    if [[ $idx_of_lib > 0 && $prev_is_lib -eq 1 ]]; then
        local tools=$(_get_tool_list $lib)
        local choices=($(compgen -W "$tools" -- "$cur"))
        if [ "${#choices[@]}" == "1" ]; then
            local number=$(echo ${choices[0]} | cut -f1 -d "-")
            COMPREPLY=("$number")
            return 0
        else
            COMPREPLY=("${choices[@]}")
            return 0
        fi

    # case: library name and tool number is given, completion for paramters or file if previous is a parameter
    elif [[ $idx_of_lib > 0 && $t_id_is_valid -eq 1 ]]; then
        if [[ ${prev} == -* ]] ; then
            COMPREPLY=($(compgen -f -- "$cur"))
        else
            local params=$(_get_tool_params $lib $t_id )
            COMPREPLY=($(compgen -W "$params" -- "$cur"))
        fi
        return 0

    # case: no library given, completion for flags when dash is detected
    elif [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${saga_opts} ${saga_opts_long}" -- ${cur}) )
        return 0

    # case: no library given, completion for libraries
    elif [[ ${cur} == * ]] ; then
        COMPREPLY=( $(compgen -W "${tool_libs}" -- ${cur}) )
        return 0
    fi
} &&
complete -F _saga_completions saga_cmd
