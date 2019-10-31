#!/bin/bash -e

#-----------------------------------------------------------------------------------------
# Script information
script_name='FP ENVIRONMENT - PYTHON3 LIBRARIES'
script_version="1.0.10"
script_date='2019/10/31'

fileref_miniconda='https://repo.continuum.io/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh'

fp_folder_libs=/home/fabio/Documents/Work_Area/Code_Development/Library/virtualenv_python3
fp_env_libs='virtualenv_python3'

# multilines comment: if [ 1 -eq 0 ]; then ... fi
#-----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script start
echo " ==================================================================================="
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> START ..."
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Download library source codes
echo " ====> GET LIBRARY FILES ... "
wget $fileref_miniconda -O miniconda.sh
echo " ====> GET LIBRARY FILES ... DONE!"
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Install python environmente using miniconda
echo " ====> INSTALL PYTHON ENVIRONMENT ... "
bash miniconda.sh -b -p $fp_folder_libs
export PATH="$fp_folder_libs/bin:$PATH"
echo " ====> INSTALL PYTHON ENVIRONMENT ... DONE!"
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Install python libraries
echo " ====> INSTALL PYTHON LIBRARIES ... "
conda create -n $fp_env_libs -c conda-forge numpy scipy pandas matplotlib rasterio geopandas netCDF4 pynetcf pyflakes statsmodels cython h5py jupyter pybufr-ecmwf pykdtree pygrib pyresample cartopy basemap basemap-data-hires proj4 progressbar2 xarray pygeobase execnet memon dask pip python=3
source activate $fp_env_libs
pip install pygeogrids
pip install h5netcdf
pip install ascat
pip install pytesmo
pip install repurpose
pip install jupyter
pip install JPype1-py3
conda install -c conda-forge rise
echo " ====> INSTALL PYTHON LIBRARIES ... DONE!"
# ----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script end
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> ... END"
echo " ==> Bye, Bye"
echo " ==================================================================================="
# ----------------------------------------------------------------------------------------

