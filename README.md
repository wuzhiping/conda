# conda
miniconda env

```code
docker build -t <myCondaEnvImg> .

docker run --rm -it <myCondaEnvImg> conda run -n <py310> python -V

docker run --rm -it -p 5000:8888 -v $PWD:/src \
                              <myCondaEnvImg> \
                              conda run -n <py310> -v --live-stream \
                              jupyter lab --allow-root --ip=0.0.0.0

docker run --rm -it -p 5000:8000 <myCondaEnvImg> \
                    conda run -n <py310> -v --live-stream \
                       fastapi dev main.py --host 0.0.0.0
```
