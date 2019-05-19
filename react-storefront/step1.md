First, let's start up a fresh Docker container to work out of for this course:

`docker run --rm -it ubuntu:xenial`{{execute}}

> **NOTE:** We use Ubuntu in this course. However, React Storefront apps can also run on macOS and Windows.

1. Add the official package repo: `curl -sL https://deb.nodesource.com/setup_8.x | bash -`{{execute}}
2. Install `nodejs`: `apt-get -y install nodejs`{{execute}}
3. Install the latest version of `npm`: `npm install -g npm@latest`{{execute}}

Let's verify that we have installed the expected versions:

Expected Version | Installed Verison
---------------- | --------------------
>= v8.15.0       | `node -v`
>= v6.9.0        | `npm -v`
