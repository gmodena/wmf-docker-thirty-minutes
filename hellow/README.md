Build the image with
```
docker build -t hello-pythonic-world .
```.

Once finished, execute the container  with:
```
docker run hello-pythonic-world 
```.

## Override the entry point
```
docker run hello-pythonic-world cat /etc/issue
```

## List and remove unused images
```
docker image ls
docker image rmi hello-pythonic-world
```


