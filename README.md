# conda
miniconda env

```code
docker build -t myCondaEnvImg .

docker run --rm -it myCondaEnvImg <py310> python -V

fastapi dev main.py --host 0.0.0.0
```
