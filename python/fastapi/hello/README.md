# hello

`Hello world!` app starter with FastAPI.

## Dev environment

If you are working with Nix, then run the following to install `python311` and `poetry`.

```shell
nix develop
```

Afterwards, install dependencies with `poetry` and activate the virtual environment:

```shell
poetry install && poetry shell
```


Finally, we can run the server with

```shell
uvicorn hello.main:app --reload
```


## Links

- Homepage: http://127.0.0.1:8000/
- Swagger docs: http://127.0.0.1:8000/docs
- Redoc: http://127.0.0.1:8000/redoc
- OpenAPI: http://127.0.0.1:8000/openapi.json
