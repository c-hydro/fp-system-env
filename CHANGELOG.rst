=========
Changelog
=========

Version 1.6.3 [2022-11-22]
**************************
APP: **setup_fp_system_venv_python_generic.sh**
    - Script refactor for generic venv python package 
    
APP: **setup_fp_system_conda_python_basic.sh**
    - Script refactor for basic conda python package with the environment tag
      dynamic definition

APP: **setup_fp_system_conda_python_hyde.sh**
    - Script refactor for hyde conda python package 

APP: **setup_fp_system_conda_python_hmc.sh**
    - Script refactor for hmc conda python package 
    
APP: **setup_fp_system_conda_python_hat.sh**
	- Script refactor for hat conda python package 

APP: **setup_fp_system_conda_jupyter_labs.sh**
	- Script refactor for labs conda jupyter package 

Version 1.6.2 [2021-06-28]
**************************
ADD: **setup_fp_env_hmc.sh**
	- HMC version 3.1.5

Version 1.6.1 [2021-04-07]
**************************
FIX: **setup_fp_env_python_generic.sh**
	- Add the check for python environments previously installed;
	- Add the requirements file in yaml format as option to install the virtual environment.
FIX: **setup_fp_env_python_hmc.sh**
	- Add the check for python environments previously installed;
	- Add the requirements file in yaml format as option to install the virtual environment.
FIX: **setup_fp_env_python_hyde.sh**
	- Add the check for python environments previously installed;
	- Add the requirements file in yaml format as option to install the virtual environment.
FIX: **setup_fp_env_python_hat.sh**
	- Add the check for python environments previously installed;
	- Add the requirements file in yaml format as option to install the virtual environment.

Version 1.6.0 [2021-03-08]
**************************
ADD: **setup_fp_env_hmc.sh**
	- HMC version 3.1.4

Version 1.5.9 [2021-01-08]
**************************
ADD: **setup_fp_env_python_generic.sh**
	- Create the installer to use the conda environment for generic purposes;
	- Update of miniconda version (Miniconda3-py37_4.8.2).
ADD: **setup_fp_env_python_hmc.sh**
	- Create the installer to use the conda environment for the hmc package;
	- Update of miniconda version (Miniconda3-py37_4.8.2).
ADD: **setup_fp_env_python_hyde.sh**
	- Create the installer to use the conda environment for the hyde package;
	- Update of miniconda version (Miniconda3-py37_4.8.2).
ADD: **setup_fp_env_python_hat.sh**
	- Create the installer to use the conda environment for the hat package;
	- Update of miniconda version (Miniconda3-py37_4.8.2).

Version 1.5.8 [2020-10-26]
**************************
ADD: **setup_fp_env_hmc.sh**
	- HMC version 3.1.3

Version 1.5.7 [2020-08-13]
**************************
ADD: **setup_fp_env_python.sh**
	- Add **pytest** library for testing scripts and procedures

Version 1.5.6 [2020-07-23]
**************************
ADD: **setup_fp_env_hmc.sh**
	- HMC version 3.1.2

Version 1.5.5 [2020-06-05]
**************************
ADD: **setup_fp_env_python.sh**
	- Add **seaborn** library for soil moisture validation plots

Version 1.5.4 [2020-04-20]
**************************
ADD: **setup_fp_env_python.sh**
	- Add **pygrib** and **gldas** libraries for soil moisture validation procedure

Version 1.5.3 [2020-04-20]
**************************
ADD: **setup_fp_env_python.sh**
	- Add **bottleneck** library for xarray configuration

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
