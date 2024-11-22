# Work Zone Activity Monitor API

## Documentation

Live documentation can be access at /docs
Static documentation can be viewed through the static page [docs.html](docs.html), and is generated through this script: https://gist.github.com/oseiskar/dbd51a3727fc96dcf5ed189fca491fb3

to retrieve the openapi.json from the live api, use this command:

```
curl http://localhost:8080/openapi.json -o openapi.json
```

then convert the json to yaml with by importing the json into [editor.swagger.io](https://editor.swagger.io/)

## Running with Docker

```
docker compose up --build -d
```
