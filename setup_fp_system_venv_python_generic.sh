#!/bin/bash -e

#-----------------------------------------------------------------------------------------
# Script information
script_name='FP ENVIRONMENT - PYTHON3 LIBRARIES FOR GENERIC PACKAGE - VIRTUALENV'
script_version="1.6.3"
script_date='2022/05/23'

# Argument(s) default definition(s)
virtual_env_folder="$HOME/fp_system_venv"
virtual_env_name="fp_system_venv_python3_generic_settings"
virtual_env_requirements='requirements_fp_system_venv_python_generic.txt'
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script start
echo " ==================================================================================="
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> START ..."

# Create virtual_env folder
if [ ! -d "$virtual_env_folder" ]; then
	mkdir -p $virtual_env_folder
fi

# Define virtual_env path
virtual_env_path=${virtual_env_folder}/${virtual_env_name}

# Create virtual_env system
python3 -m venv $virtual_env_path

# Use pip inside venv 
pip_env="$virtual_env_path/bin/pip"
# Upgrade pip
$pip_env install --upgrade pip

# Add libraries to virtual_env
$pip_env install -r ${virtual_env_requirements}
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script end
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> ... END"
echo " ==> Bye, Bye"
echo " ==================================================================================="
# ----------------------------------------------------------------------------------------
