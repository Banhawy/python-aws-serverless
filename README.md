[![Python microservice test with Github Actions](https://github.com/Banhawy/python-aws-microservice/actions/workflows/devops.yml/badge.svg)](https://github.com/Banhawy/python-aws-microservice/actions/workflows/devops.yml)

# Python Microservice

This is a sample python microservice project using GitHub Actions to be deployed in a containerized environment.

## Steps
### install virtualenv
```
virtualenv ~/.venv
```
### edit `.bashrc` to load the virtualenv
Make .bashrc load the virtualenv everytime a new terminal is opened 
```
echo -en "\nsource ~/.venv/bin/activate" >> ~/.bashrc
```