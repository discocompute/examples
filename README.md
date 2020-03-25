# Dis.co Example Code

This repository contains a set of example code that showcase the core features of Dis.co. 

## Getting Started

Downloading the code: 

```
git clone https://github.com/discocompute/examples.git
```
Then, you will be able to explore the code locally. 

Install Dis.co: 

We recommend you perform this in prior to installing Dis.co. The dependencies in your Python environment can significantly affect the performance as we will be resolving the same dependencies on all remote servers. Currently, we support Mac OSX, Linux, and Windows as long as you have the Python 3.6+ installed. For Windows users, you may want to configure a Bash to execute many of the scripts. 


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

## Organization of the repository's directories


1. **CLI** - it contains examples related to ultities functions of Dis.co

2. **SDK** - it contains the functions related to SDK.

3. **Web UI** - contains sample codes that run on the Web UI.

4. **Docker** - contains build scripts for docker images


## Available Samples


