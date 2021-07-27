Problems using optox library with mri-variationalnetwork model 

Hi, 
I'm having some issues install the optox library. I can install the optof library, but most of the child packages are empty and missing the `.so` files. Specfically, ac

## Steps to reproduce: 

### Environment info: 
* Linux OS
* cmake version 3.17.3
* cuda 11.3.0
* COMPUTE_CAPABILITY=7.0
* Using conda env created from the `environment.yml` file [here](https://github.com/VLOGroup/mri-variationalnetwork/blob/master/environment.yml)

### Installation steps: 
* Set environment variables per instructions 
* Run `cmake .. -DWITH_PYTHON=OFF -DWITH_PYTORCH=OFF -DWITH_TENSORFLOW=ON -DCMAKE_BUILD_TYPE=Release` 
* Run `make install`

### Python script
* Attempted to run `python  