# Ruby + OpenCV

  Builds a Ruby environment with the libraries necessary to work with OpenCV.

  This container is based of a Debian distribution instead of a minimal Ruby
  container. This gives us access to the debian repositories and it makes it
  easy to install more packages. Less hassle.


# Building

## Set the desired versions

  1. Open `Dockerfile`.

  2. Set the desired version number for Ruby eg. `FROM ruby:2.3.1-slim`.

  3. Set the desired version number for OpenCV eg. `ENV OPENCV_VERSION=2.4.13`.

## Build your container

  Note: please follow the convention `<ruby-version>_<openv_version>` when tagging and pushing new images.

  1. Build image eg. `docker build -t ztory/ruby-opencv:2.3.1_2.4.13 .`

  2. Make sure build was successful. Now continue to the next step.

## Push the newly built container

  1. Commit your changes eg. `git add . && git commit -m "Ruby 2.3.1-slim and OpenCV 2.4.13"`.

  5. Tag this version eg. `git tag -a 2.3.1_2.4.13 -m "Ruby 2.3.1-slim and OpenCV 2.4.13"`.

  6. Push to master using `git push --follow-tags`.


# Thanks to

  * https://github.com/kavolorn/Docker-OpenCV
  * https://hub.docker.com/_/ruby/
