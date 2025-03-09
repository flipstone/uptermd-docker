# Instructions for building and deploying

In this repo run the command below, to build a local image for testing

```
docker build . -t upterm:beta
```

Note: Pushing to main will trigger a Github Action worfklow that will create a new image,
with the `latest` tag, and a date tag, in the format `YYYY-MM-DD`
