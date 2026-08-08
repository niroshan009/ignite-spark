# 🚀 ignite-spark

Spark job to process data stream with spark structured stream and get reference data from apache ignite efficiently.

Intend to submit spark to k8s cluster from [teams-scaler](https://github.com/niroshan009/teams-scaler)


## ✨ Features
* event driven
* efficient lookup with ignite
* k8s resource optimized
* fault-tolerant

# 📦 Getting Started
To get started please refer to the [teams-scaler](https://github.com/niroshan009/teams-scaler)

teams-scaler will submit the spark job to the cluster based on the file upload events from rustfs

---
## 🔨 Building

### building artifacts

First project with below command to build artifact and copy the resource folder

`mvn clean package`

### building docker image

Build docker image with the artifacts built in the previous step

`docker build -t local/ignite-spark:latest .`