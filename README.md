# Docker Hub Images

A catch all repository to house the docker images that I have pushed to DockerHub.

## Images

### NIFI No Volumes 
#### Reason
NIFI default image includes Volumes in their Dockerfile and it resulted in alot of pains for me, so this image is to remove that. Other than that its exactly the same. 

### NPM Builder
#### Reason
A image to build NPM projects. 
 
### Docker Compose Java
#### Reason
An image based on Alpine linux with OpenJdk 8, needed this image for a Docker-In-Docker build environment with Jenkins. 