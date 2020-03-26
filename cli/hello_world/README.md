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
Uploading server.py: 2.68kB [00:00, 8.36kB/s]                                   
 Script file uploaded
 Job 5e7d0cd513ba27000cc03d04 started
Created job with id 5e7d0cd513ba27000cc03d04
```
Notice that this will return an id. In this example, we have "5e7d0cd513ba27000cc03d04". 
To view the job, you enter the following command along with the id.  

```
$ disco job view 5e7d0cd513ba27000cc03d04
```

This will give the following output. 

```
Name: Hello World
Status: Done 
Task summary
------------
queued: 0
running: 0
stopped: 0
failed: 0
success: 1
```

And you can download the result with this command, once it's completed (success: 1).

```
disco job download-results 5e7d0cd513ba27000cc03d04

```
and this will prompt for the input for the path. 

```
Path for result files: 

```
Enter the path (e.g., results) and it will start downloading the file. Now our result will be inside this text file.

```
cat results/1585253669720-5e7d0cd513ba27000cc03d05/IqoqoTask.stdout.0.txt
```


