# Uncommon Dart Error: Improper Exception Handling in Asynchronous Operations

This repository demonstrates a common error handling pattern in asynchronous Dart code, along with a more robust solution. The original code lacks specific error handling for different types of exceptions, making debugging and user feedback difficult.  The improved solution addresses this by providing more informative error messages and handling specific exceptions.

## Bug
The `bug.dart` file contains Dart code that fetches data from an API. It uses a `try-catch` block but doesn't effectively handle various types of exceptions, making it difficult to determine the exact cause of errors.

## Solution
The `bugSolution.dart` file shows an improved version.  It differentiates between network errors (like timeouts) and JSON decoding errors, providing more specific error messages to the user or logs for debugging.