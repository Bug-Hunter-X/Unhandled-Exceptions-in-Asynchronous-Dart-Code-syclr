# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations, specifically network requests.  The provided code fetches data from a remote API.  The initial version lacks robust error handling, potentially leading to crashes or unexpected behavior. The solution shows how to improve the error handling.

## Bug

The `bug.dart` file contains the initial, flawed code that fails to adequately handle exceptions that could occur during the network request or JSON decoding.

## Solution

The `bugSolution.dart` file provides an improved version with more comprehensive error handling. This includes checking the response status code and handling exceptions gracefully.