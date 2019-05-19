We're going to work out of a completely fresh, temporary environment using [Docker](https://www.docker.com/products/docker-desktop). The base image — [`node:8`](https://hub.docker.com/_/node#nodeversion) — contains the prerequisites to run React Storefront apps:

* Node.js v8.x
* npm v6.x
* git (to download some npm modules)

To help you get off the ground, install the [`create-react-storefront`](https://www.npmjs.com/package/create-react-storefront) CLI tool:

```
npm install -g create-react-storefront
```{{execute}}

It is used to generate a unique React Storefront project using interactive input from you. Try it out:

```
create-react-storefront myapp
```{{execute}}