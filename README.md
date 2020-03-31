# Dis.co Example Code

This repository contains a set of example code that showcase the core features of Dis.co. 

## Getting Started

### Downloade the code: 

```
git clone https://github.com/discocompute/examples.git
```
Then, you will be able to explore the code locally. 

### Install Dis.co: 

We recommend you perform this before installing Dis.co. The dependencies in your Python environment can significantly affect the performance as we will be resolving the same dependencies on all remote servers. Currently, Dis.co supports Mac OSX, Linux, and Windows with Python 3.6+ installed. For Windows users, you may want to configure Linux bash to execute many of the scripts locally. 


```
#go to the example directory
cd examples/

#install the python virtual environment
python -m venv venv_disco
source venv_disco/bin/activiate
```

Now, we install the Dis.co SDK and all libraries. This also comes with the CLI interface for Dis.co.

```
pip install disco --upgrade
```

## Login & Authentication

You have to login before running any of the examples. You can obtain your login by talking to our team. To login, simply type this in the terminal and follow the on screen instructions. 

```
disco login
```

After successfully login, you will be able to use the Dis.co's CLI to create or run jobs. To get more info, you can type this to see the available commands. 

```
disco -h 
```

## Organization of the repository's directories

1. **CLI** - it contains examples related to ultities functions of Dis.co

2. **SDK** - it contains the functions related to SDK.

3. **Web UI** - contains sample codes that run on the Web UI.

4. **Docker** - contains build scripts for docker images


## Available Samples
| Project Name.         |     Descriptions                    |
|-----------------------|-------------------------------------|
| [Prime Number Finder](https://github.com/discocompute/examples/tree/master/cli/prime_finder) |  Showcasing how we can use Dis.co CLI|
| [Python SDK Custom Docker](https://github.com/discocompute/examples/tree/master/sdk/python_sdk_custom_docker) | Learn how to run Docker on Dis.co |
| Hello World | Hello world example on how to run Dis.co with CLI, Web UI, and SDK. You can find the solution in each folder. | 
