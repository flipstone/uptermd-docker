# Instructions for building and deploying

First note that the steps below will terminate any existing upterm sessions.
Please make sure no one is using it at the time you do this.


In this repo run

```
docker build . -t flipstone/upterm:$(date --iso-8601)
docker push flipstone/upterm:$(date --iso-8601)
```

Note: Building the docker image will build the `master` branch of the `upterm`
repo on GitHub. If you want to build a specific tag or revision then you will
need to modify the Dockerfile.

In the Atlantis repo run

`./tf upterm apply -var "image=flipstone/upterm:$(date --iso-8601)"`

Bingo bango, you're done
