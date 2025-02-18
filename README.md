# conda
miniconda env

```code
docker build -t myCondaEnvImg .

docker run --rm -it myCondaEnvImg conda run -n <py310> python -V

docker run --rm -it myCondaEnvImg conda run -n py37 -v --live-stream fastapi dev main.py --host 0.0.0.0
```
