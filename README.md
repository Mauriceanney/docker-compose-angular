# Docker Environement for Nodejs !

## How to use it

Set your node version and your start command in the **.env** file

```bash
vi .env
NODE_PORT=3000
NODE_VERSION=6.10.2
NODE_START_COMMAND=npm run build
```

## Install dependencies

```bash
docker-compose run npm-install
```

## Start node

You need to setup a package-script in your package.json file first. Something like

```
"scripts": {
  "build": "gulp dev"
}
```


```bash
docker-compose run node
```
