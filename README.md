# PyGeoIpMap Dockerized

This is a project to put [pieqq/PyGeoIpMap](https://github.com/pieqq/PyGeoIpMap) into a docker container for easy usage.

## Usage

Run the following command to run PyGeoIpMap in a container.

```
docker run -it --rm -v $(PWD):/mnt lannonbr/pygeoipmap:1.0.0
```

In this example, I am mounting the current working directory to `/mnt`. The program finds a `ips.txt` file (or can be custom defined by passing in an env of input_file. Ex: -e input_file=foo.txt) and will output a file in the mounted volume as `image.png` which is the result image. Mounting a directory to `/mnt` is required. The input file needs to be a list of ips separated by a newline.
