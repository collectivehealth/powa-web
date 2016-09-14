
![PostgreSQL Workload Analyzer](https://github.com/dalibo/powa/blob/master/img/powa_logo.410x161.png)

# PoWA Web

This project is a User Interface to the [PoWA](http://dalibo.github.io/powa/) project.

For more information, please read the [PoWA-web documentation](http://powa.readthedocs.io/en/latest/powa-web/index.html):

http://powa.readthedocs.io/en/latest/powa-web/index.html

## Docker Container

The Docker Container handles the installation of any prerequisties for you.  A `docker run` will pull and run the powa-web docker container on port `8888`.

1. Create a PoWA Config file locally (at `/etc/powa-config.conf`, for example)
2. Run the PoWA Container ```
docker run --name powa-web --net host -v /etc/powa-web.conf:/etc/powa-web.conf -d dalibo/powa-web:latest
```

### Building The Docker Container

1. Build the Docker PoWA Web Container ```
docker build -t dalibo/powa-web:latest .
```
2. Push it to Docker Hub ```
docker push dalibo/powa-web:latest
```
