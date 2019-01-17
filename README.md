# gisaia/sbt
Scala Build Tool docker image

## Build locally
```bash
docker build -t gisaia/sbt:latest .
```

## Usage
```bash
  docker run --rm \
      -v $PWD:/opt/work \
      -v $HOME/.m2:/root/.m2 \
      -v $HOME/.ivy2:/root/.ivy2 \
      gisaia/sbt \
      sbt compile package
```
