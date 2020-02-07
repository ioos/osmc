# OSMC
The front page / home page for IOOS OSMC


# Installation

0. Download and install nodeJS (should come with npm)
0. Install `yarn` using your package manager. Instructions can be found [here](https://legacy.yarnpkg.com/en/docs/install/).

0. Use `yarn` to install the package and its dependencies:

```
$ yarn
```

0. Run the project

    ```
    node bin/www
    ```

# Developing

Most of this project are static files. The initial pages are loaded as jade
templates.  

# Docker build

```
$ docker build -t <tag> -f Dockerfile .
```

__NOTE__: ensure that `public/lib` is removed *before* building. If it exists,
`yarn` will attempt to use the existing one in the Docker build, breaking the symlink
in the container and lead to ugly CSS.

# Sample Docker-compose file:
version: '2'

services:
  ioos-osmc:
    image: osmc:0.0.1
    ports:
      - "3008:3000"

# Update the .env file with config variables
For testing Google Analytics and things that use env variables.
Update the .env file in your root folder similar to this:
```
GOOGLE_ANALYTICS_ID=YOUR_ENV_VAR_HERE
```
