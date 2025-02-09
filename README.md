# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: insufficient exception handling in asynchronous operations.  The `bug.dart` file contains code that attempts to fetch data from a remote API.  However, it doesn't adequately handle potential exceptions such as network errors or JSON decoding failures.  The `bugSolution.dart` file provides a corrected version with improved error handling.

## Bug Description
The original code only checks the HTTP status code.  Network issues (e.g., timeouts) or invalid JSON responses are not gracefully handled, potentially leading to unexpected app behavior or crashes.

## Solution
The solution enhances error handling using `try-catch` blocks and provides more specific error messages for better debugging. It demonstrates how to address different types of exceptions that can arise during network requests and JSON parsing.