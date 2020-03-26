# Running Dis.co's Python SDK Example

This example code demonstrates how to use Dis.co's Python SDK and print the first hello world.

The example code consists of two files.

- main.py - Python SDK usage code
- server.py - Server side Python script 

Before you start, we recommend that you setup a new virtual environment with Python

```
#create the virtual environment
python3 -m venv venv 
#activate the virtual environment
source venv/bin/activate
``` 

Then, install Dis.co's Python SDK + CLI with the following command line.

```
pip3 install disco --upgrade
```

# Usage
1. Run the Job. 

	```
	python main.py
	```

2. Check the results.

	The code downloads the result back on the current directory. You should be able to see two text files on your local current directory. 


# FAQ

1. Why am I getting this error when I run the main.py script.

	```
	disco.core.exceptions.InvalidCredentials: Wrong email or password
	```

	**Answer**: Modify the main.py and update the username and password. 
