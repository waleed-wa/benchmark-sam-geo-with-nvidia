## Running the test
Run the command below to use the gpus for the benchmark:
`docker run --rm --runtime=nvidia --gpus all geo`
Result:
```
Running benchmark script ...
Starting timer at : 2023-11-22 03:23:21.996749
Time taken = 0:00:02.456740
```
The command below will run the test without the GPUs
`administrator@vm-han-hydropower:~/dev/nvidia-docker-test$ docker run --rm  geo`
Output:
```
Running benchmark script ...
Starting timer at : 2023-11-22 03:23:53.810371
Time taken = 0:06:56.112245
```
