[![Travis Build Status](https://travis-ci.org/smartapps-fr/docker-phan.svg)](https://travis-ci.org/smartapps-fr/docker-phan) [![Microbadger badge](https://images.microbadger.com/badges/image/smartapps/phan.svg)](https://microbadger.com/images/smartapps/phan)

# docker-phan

Docker image for [Phan](https://github.com/phan/phan)

Inspired by [cloudflare/docker-phan](https://github.com/cloudflare/docker-phan) and [mre/docker-php-phan](https://github.com/mre/docker-php-phan).

## Getting docker-phan

The easiest way to use `docker-phan` is to create a shell function for “phan”
that makes makes it nearly transparent that phan is running inside Docker.

```sh
phan() { docker run -v $PWD:/mnt/src --rm -u "$(id -u):$(id -g)" smartapps/phan:latest $@; return $?; }
```

## Running docker-phan
> If you’re just getting started with Phan, you should follow Phan’s excellent
[Tutorial for Analyzing A Large Sloopy Code Base][phan-tutorial] to setup the
initial configuration for your project.

All of Phan’s command line flags can be passed to `docker-phan`.

## Example

To create an “analysis.txt” in the current directory for farther processing

``` sh
phan -po analysis.txt
```
