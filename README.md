# conda
miniconda env

```code
docker build -t <myCondaEnvImg> .

docker run --rm -it <myCondaEnvImg> conda run -n <py310> python -V

docker run --rm -it -p 5000:8888 -p 8000:8000 \
                                 -v $PWD:/src \
                              <myCondaEnvImg> \
                              conda run -n <py312> -v --live-stream \
                              jupyter lab --allow-root --ip=0.0.0.0 --NotebookApp.token='12345678'

docker run --rm -it -p 5000:8000 <myCondaEnvImg> \
                            conda run -n <py312> \
                                -v --live-stream \
              fastapi dev main.py --host 0.0.0.0
```
