# Micro-Front End Portal

This repo is a demo of how to use Modular to create an application composed of
multiple microfrontends.

Components:

1. Host app.
1. Component apps.
1. Application catalogue server.

Features:

- Dynamical view discovery.
- Dynamically add new views to a host app.
- Realtime communication between host and micro-frontends.

## Get started

Load dependencies, start up the application catalogue server, build the host
view.

```bash
yarn && yarn scaffold && yarn serve
```

## Under the hood

### Example apps

```bash
yarn modular add card-view --template=card-view
yarn build card-view

yarn modular add grid-view --template=grid-view
yarn build grid-view

yarn modular add simple-app --template=iframe-app
PUBLIC_URL="/simple-app" yarn build simple-app
```

Note: apps or esm-views that are loaded as iframes need to be built with a base
url because the server won't serve them from root. In general, using the
environment variable `PUBLIC_URL="/<package-name>"` when building will work.
