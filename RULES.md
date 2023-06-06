# Rules

List rules ideas and the status of their implementation.

| Name | Severity | Description | Status |
|---|---|---|---|
| Use unwrap | Warning | Check for occurences of `unwrap` and suggest proper error checking | :construction: |
| Use felt252 | Warning | Check for usage of felt252 type for arithmetic operations and suggest to use integers type instead | :construction: |
| Div by zero | Warning | Check if a divison by zero could occur and suggests to check if the operation is valid beforehand top report a better error message | :construction: |
| Mult overflow | Warning | Check if a multiplication could result in a panic related to an overflow and suggest to check if the operation is valid beforehand to report a better error message | :construction: |
| Unused function parameters | Warning | Check if the parameter of a function is not used | :construction: |
| Unused variable value | Warning | Check if the value stored by a variable is not used | :construction: |
| Borrow deref ref | Warning | Check for pattern `@*(@T)` | :construction: |
| Contract call with unchecked parameters | Warning | Check for external contract call with tainted parameters | :construction:
| Break CEI patterns | Warning | Check for violation of the CEI pattern | :construction: |
| Missing break in loop | Warning | Check for missing termination condition in loop | :construction: |
| Array OOB | Warning | Check for array indexing with tainted parameter | :construction: |
| External constructor | Warning | Check if the constructor has been marked as external | :construction: |

