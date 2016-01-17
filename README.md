
First cut at a Docker file to run the Logscape ( http://www.logscape.com/ /  http://logscape.github.io/ ) management console.

Pre-requisites
* docker/docker toolbox installed
* Logscape download is in current directory - Logscape-3.10_b0115.zip

Use it
* docker build -t logscape . # build the image
* docker run -p 8080:8080 -it logscape # runs the console - should be up on port 8080 after 30 seconds or so.

Notes
* Login pages comes up ok, but once you login, the next page keeps refreshing itself.
