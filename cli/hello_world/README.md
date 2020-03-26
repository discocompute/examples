# Hello World

This directory contains a simple script that runs Dis.co command line interface. 


## Usage

Please first login to dis.co prior to running any of the script.

You can login to disco using this command.

```
$ disco login
```

### Local 

To test it locally, simply run server.py.
```
$ python server.py
```
You will see "Hello World" print to the stdout.

### Dis.co CLI

To run this on Dis.co, simply run the following command line. This will upload the script to the server and run the job. 
```
$ disco job create -n "Hello World" -s server.py -r

```

## Output

Here is an sample output from the Dis.co CLI command.

```
```
Notice that this will return an id. In this example, we have "". 
To view the job, you enter the following command along with the id.  

```
$ disco job view 

```

This will give the following output. 

```
Name: Hello World
Status: Working 
Task summary
------------
queued: 2
running: 0
stopped: 0
failed: 0
success: 0
```

And you can download the result with this command, once it's completed (success: 2)

```
disco job download-results 

```
and this will prompt

```
Path for result files: 

```
Type in your directory and it will start downloading the file. 


