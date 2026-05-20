#!/usr/bin/env bash

# BootConfigTool-ng 
# a.k.a. BCT

# Define our Functions File
BCT_FuncFile="$(pwd)/BootConfigTool.bfunc"

# Source Our Config File
if [ "-f" "$BCT_FuncFile" ]; then
    # shellcheck source=/dev/null
    source "$BCT_FuncFile"
else
    echo "ERROR: Functions File $BCT_FuncFile Not Found!"
    # Only use 'break' if this code is inside a for/while loop
    # break 
fi




### Main Program ###
BootConfigTool_DisplayBanner
BootConfigTool_GetCurrentConfig

# BootConfigTool_Usage
BootConfigTool_TempUsageFix
