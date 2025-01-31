# COBOL Arithmetic Overflow Bug

This example demonstrates a common error in COBOL programs: arithmetic overflow without proper error handling. The program attempts to increment a numeric field beyond its defined limit, resulting in unexpected behavior.

The `bug.cob` file contains the problematic code.  The `bugSolution.cob` file shows the improved code with robust error handling.

## Reproducing the Bug

Compile and run `bug.cob`. You will notice that the program fails to handle the overflow correctly, potentially producing incorrect results or unexpected program termination.

## Solution

The `bugSolution.cob` file demonstrates the correct approach.  By explicitly checking for potential overflows before performing the addition, the program gracefully handles the error, avoiding unpredictable behavior.