# docker build -t shawoo/agent .

docker run --rm -it -p 5000:8888 -p 8000:8000 \
                                 -v $PWD:/src \
                              shawoo/agent \
                              conda run -n py310 -v --live-stream \
                              jupyter lab --allow-root --ip=0.0.0.0 --NotebookApp.token='12345678'
