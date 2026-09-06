#!/usr/bin/env bash

# BootConfigTool-ng 
# a.k.a. BCT

# Define our Functions File
BCT_FuncFile="$(pwd)/BootConfigTool.bfunc"

function BCT_SourceFuncFile() {
    # Source Our Config File
    if [ -f "$BCT_FuncFile" ]; then
        # shellcheck source=/dev/null
        source "$BCT_FuncFile"
    else
        echo "ERROR: Functions File $BCT_FuncFile Not Found!"
         return # Per shellcheck, using in lieu of 'break'.
    fi
}



### Main Program ###
BCT_SourceFuncFile # Run Function Within This Script

BootConfigTool_DisplayBanner
NewLine
BootConfigTool_GetCurrentConfig
NewLine

# BootConfigTool_Usage
# BootConfigTool_TempUsageFix

# Show CASE Statement
BootConfigTool_ShowCase
