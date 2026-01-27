# BootConfigTool-ng 
# a.k.a. BCT

# Define our Functions File
BCT_FuncFile="$(pwd)/BootConfigTool.bfunc"

# Source Our Config File
if -f [ $BCT_FuncFile ]; then 
  source $BCT_FuncFile
else
  echo "EROR: Functions File $BCT_FuncFile Not Found!"
  break
fi


### Main Program ###
BootConfigTool_DisplayBanner
BootConfigTool_GetCurrentConfig

# BootConfigTool_Usage
BootConfigTool_TempUsageFix
