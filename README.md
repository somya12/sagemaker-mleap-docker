
This repository contains the Dockerfile alongwith helper files to build a docker image. Using the created docker image, build another image to include you model.

How to use the docker image created - 

```
FROM somya12/qds_ml:latest-2.0
copy <tmp_model_location> /opt/docker/models/model.zip
```
