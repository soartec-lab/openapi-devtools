# openapi-devtools
Devtools and sample specification for OpenAPI v3

## Setup

```
$ git clone git@github.com:soartec-lab/openapi-devtools.git
$ docker-compose build
```

## Usage

### Use `swagger-ui`

`swagger-ui` is hosted on`localhost` port 8080 of `docker-compose`.

```
$ docker-compose up
$ open http://localhost:8080
```

### Use `swagger-editor`

`swagger-editor` is hosted on`localhost` port 8081 of `docker-compose`.

```
$ docker-compose up
$ open http://localhost:8081
```

### Start mock server with prism

Since prism cannot parse openapi `$ref`, use`openapi-generator` to combine the split YAML files into one schema.

```
$ docker-compose run --rm openapi-generator generate -i workspace/openapi.yml -g openapi-yaml -o workspace/generated
```

`prism` is hosted on`localhost` port 8082 of `docker-compose`.
If you execute the above command and send a request to the mock server after the schema file is output to the `generated` directory,` prism` will interpret the request and return a sample response.

```
$ curl -X GET "http://localhost:8082/users?id=1" -H "accept: application/json"
#=> {"user_id":"1234567"}
```

## Directory structure

```
$ tree
.
├── LICENSE
├── README.md
├── docker-compose.yml
├── generated
│   ├── README.md
│   └── openapi
│       └── openapi.yaml
├── openapi.yml
└── resources
    ├── components
    │   └── schemas
    │       └── errors.yml
    └── paths
        └── users.yml
```

### generated
`openapi-generator` The output directory of the integrated YAML file.
`prism` refers to `generated/openapi/openapi.yaml`.

### openapi.yml
If you want to add a new path, add the definition to this file.
`swagger-ui` and `swagger-editor` refer to this file.

### resources
API resource definitions are stored in `paths`, and commonly used components are stored in `components`.