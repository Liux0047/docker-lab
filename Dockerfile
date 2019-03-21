# debian is a type of Linux. Ubuntu is based on it. jessie-slim is a particular variant chosen to reduce the size of the image.
FROM ocaml/opam:alpine
ADD . /code
# This means that commands will run in the right directory on the host, because /code is mapped in the docker-compose.yml file.
WORKDIR /code

CMD [ "./run.sh" ]