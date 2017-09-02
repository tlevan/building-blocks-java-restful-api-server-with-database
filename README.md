# Building Blocks | Java RESTful API Server with Database

This project implements a basic RESTful API server using Java, the Spring Framework, and MongoDB.  It can be used as a starting point for more sophisticated services requiring database interactions.

The server supports [create, read, update, and delete](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) ("CRUD") operations using HTTP request methods POST, GET, PUT, and DELETE.

## Prerequisites

* [Java Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
* [Gradle](https://gradle.org/releases/)
* [MongoDB](https://www.mongodb.com/)

To check installed versions, run `java -version`, `gradle -v`, and `mongod --version`.

If you don't pre-install Gradle, it will be downloaded and installed during the build process.

## Build

Run `./gradlew build`.

## Start Server

Start mongod first, then run `java -jar build/libs/restful-api-server-with-database-1.0.0.jar`.

## Demonstrate API Operations

To exercise all of the API operations using cURL (and assuming the server is running at localhost:8080), run `perl demonstrate.pl`.

## Stop Server

`Control+C`

