To simulate serving large files from a web-server

```
# Use generate_large_files.sh to create a large file
$ ./generate_large_file.sh 10 files/10MB.file

# Run nginx and mount the local folders to serve the large files
$ docker run --rm -P -d -v (PWD)/conf:/etc/nginx/conf.d -v (PWD)/files:/app nginx

# If ${HOST} and ${PORT} are where your nginx container is running
$ curl ${HOST}:${PORT}/index.html
hello, world!
$ curl ${HOST}:${PORT}/10MB.file -o 10MB.file.out

```
