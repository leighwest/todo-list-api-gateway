# Todo List API Gateway

A Spring Cloud API Gateway service which acts as a load balancer for multiple instances of a given microservice. This makes the application more robust if the load rapidly increases. Other features of the service include the ability to read HTTP request headers and JWT validation.

## Local Development Setup

cd into the application root directory.

Build the Docker image:

```
docker build . -t leighwest/todo-api-gateway
```

Run the Docker image:

```
docker run -it --name todo-api-gateway -p 8082:8082 leighwest/todo-api-gateway
```
