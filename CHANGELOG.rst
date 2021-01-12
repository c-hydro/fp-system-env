=========
Changelog
=========

Version 1.5.3 [2020-04-20]
**************************
ADD: **setup_fp_env_python_generic.sh**
	- Create the installer to use the conda environment for generic purposes;
	- Update of miniconda version (Miniconda3-py37_4.8.2);
	- Add **pygrib** and **gldas** libraries for soil moisture validation procedure
	- Add **seaborn** library for soil moisture validation plots
	- Add **bottleneck** library for xarray configuration.
ADD: **setup_fp_env_python_hmc.sh**
	- Create the installer to use the conda environment for the hmc package;
	- Update of miniconda version (Miniconda3-py37_4.8.2);
ADD: **setup_fp_env_python_hyde.sh**
	- Create the installer to use the conda environment for the hyde package;
	- Update of miniconda version (Miniconda3-py37_4.8.2);
	- Add **pygrib** and **gldas** libraries for soil moisture validation procedure
	- Add **bottleneck** library for xarray configuration.
	- Add **seaborn** library for soil moisture validation plots

Version 1.5.2 [2020-03-19]
**************************
FIX: **setup_fp_env_python.sh**
	- Update of miniconda version to avoid the errors in installing Python3.6 interpreter

Version 1.5.1 [2020-01-10]
**************************
APP: **setup_fp_env_system.sh**
    - Release for LEXIS project of fp-envs library

APP: **setup_fp_env_hmc.sh**
	- Release for LEXIS project of fp-envs library

APP: **setup_fp_env_python.sh**
	- Release for LEXIS project of fp-envs library
