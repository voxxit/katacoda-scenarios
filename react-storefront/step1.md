We're going to work out of a completely fresh, temporary environment using [Docker](https://www.docker.com/products/docker-desktop). The base image — [`node:8`](https://hub.docker.com/_/node#nodeversion) — contains the prerequisites to run React Storefront apps:

* Node.js v8.x
* npm v6.x
* git (to download some npm modules)

To help you get off the ground, we recommend generating a project using the [`create-react-storefront`](https://www.npmjs.com/package/create-react-storefront) CLI tool. It is used to generate a unique React Storefront project using interactive input from you. Typically, you would start by filling in a few details for your project: 

* version
* repository URL
* license
* etc...

You can also simply accept the defaults and do that later - which we'll do now:

```
npx create-react-storefront myapp -y
```{{execute}}


In a few moments, `create-react-storefront` will download all the project Node.js dependencies, and build a project skeleton, pre-filled configuration files, templates, and everything else you need to get off the ground! 🚀