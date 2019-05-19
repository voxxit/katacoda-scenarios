# Step 1: Setup

You're going to need to ensure that your system has Node v8.x installed, along with a package manager such as `npm` or `yarn`.

> **NOTE:** In this course, we will be using the Ubuntu flavor of Linux. However, React Storefront apps can be developed using macOS and Windows, too.

1. Add the official Node.js repository to your list of sources: `curl -sL https://deb.nodesource.com/setup_8.x | bash -`{{execute}}
2. Install Node: `apt-get -y install nodejs`{{execute}}

This will install the latest 8.x version of Node, as well as npm. We also recommend that you install `yarn`, as some developers prefer using it:

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update
apt-get -y install yarn
```{{execute}}

Let's verify that all the versions are what we expect:

Expected Version | Installed Verison
---------------- | --------------------
>= v8.15.0       | `node -v`{{execute}}
>= v6.9.0        | `npm -v`{{execute}}
>= v1.13.0       | `yarn -v`{{execute}}
