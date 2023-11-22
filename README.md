# benchmark-sam-geo-with-nvidia

Benchmark performance of Nvidia GPUs on a [segment-geospatial](https://samgeo.gishub.org/) task.
The task is the simple automated mask generation task from [this example](https://samgeo.gishub.org/examples/automatic_mask_generator/).

## Setup
The `Dockerfile` contains the configuration of the environment to run the benchmark. Run the command below from the project directory to build the container:
```
docker build -t geo .
```

## Running the test
1. With GPUs: Run the command below to make the GPUs avaialable to the container that runs the test:
```
docker run --rm --runtime=nvidia --gpus all geo
```
Result:
```
Running benchmark script ...
Starting timer at : 2023-11-22 03:23:21.996749
Time taken = 0:00:02.456740
```

2. No GPU: The command below will run the test without the GPUs
```
docker run --rm  geo
```
Output:
```
Running benchmark script ...
Starting timer at : 2023-11-22 03:23:53.810371
Time taken = 0:06:56.112245
```
