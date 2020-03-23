#!/usr/bin/env python

"""Finds all prime numbers within a specified range.

The range will be given as a pair of numbers separated with a single space (' '),
written on the first line of a file passed in the argument.

For example, if the file 'data/range0.txt' contains '6072173 6756677' on the first 
line, type 'python prime_finder.py data/range0.txt' to run the script.
The script prints every prime it finds to the standard output stream, as well as to 
'output.txt' file.

"""

import sys
from math import sqrt
from itertools import count, islice
import os 

#helper function that check if the number is prime
#To test n for primality (to see if it is prime) just divide by all of 
#the primes less than the square root of n.
def isPrime(n):
	return n > 1 and all(n%i for i in islice(count(2), int(sqrt(n)-1)))

def main():
	if (len(sys.argv) < 2):
		print("Usage: python prime_finder.py [range data txt]")
		os._exit(1)	

	#print out the file we worked on
	print(sys.argv[1])

	#the script starts here, only execute if we have argument
	with open(sys.argv[1], 'r') as file:
		outputfile = open("output.txt", "w")
		line = file.readline()
		splitted = line.split(' ')
		startRange = int(splitted[0])
		endRange = int(splitted[1])
		for i in range(startRange, endRange):
			if isPrime(i):
				outputfile.write(str(i) + " is a prime!\n")
				print(str(i) + " is a prime!")

if __name__== "__main__":
	main()
