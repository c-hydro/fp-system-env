#!/bin/bash -e

#-----------------------------------------------------------------------------------------
# Script information
script_name='FP ENVIRONMENT - HMC LIBRARIES'
script_version="1.0.1"
script_date='2018/11/26'

# Define file reference path according with https link(s)
fileref_model_archive='https://github.com/c-hydro/hmc/raw/master/hmc-2.0.7.tar.gz'
fileref_env='fp_env_system'

# Define folder(s)
fp_folder_libs=$HOME/fp_libs_system
fp_folder_source=$fp_folder_libs/source

fp_file_env=$fp_folder_libs/$fileref_env

# multilines comment: if [ 1 -eq 0 ]; then ... fi
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script start
echo " ==================================================================================="
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> START ..."
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Create folder(s)
if [ ! -d "$fp_folder_libs" ]; then
	mkdir -p $fp_folder_libs
fi
if [ ! -d "$fp_folder_source" ]; then
	mkdir -p $fp_folder_source
fi
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Download library source codes
echo " ====> GET LIBRARY FILES ... "
cd $fp_folder_source
wget --no-check-certificate --content-disposition $fileref_model_archive -O hmc.tar.gz
echo " ====> GET LIBRARY FILES ... DONE!"
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Install ZLIB library
echo " ====> COMPILE HMC MODEL ... "

cd $fp_folder_source

fp_folder_source_hmc=$fp_folder_source/hmc
if [ ! -d "$fp_folder_source_hmc" ]; then
	mkdir -p $fp_folder_source_hmc
fi

tar xvfz hmc.tar.gz -C $fp_folder_source_hmc --strip-components=1
cd $fp_folder_source_hmc

source $fp_file_env
chmod +x configure.sh
./configure.sh

echo " ====> COMPILE HMC MODEL ... DONE!"
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script end
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> ... END"
echo " ==> Bye, Bye"
echo " ==================================================================================="
# ----------------------------------------------------------------------------------------





