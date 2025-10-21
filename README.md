# README for Username Validation Script

## Author Information
- **Name:** [Anthony Arriaga]
- **Course:** [CENG 298]
- **Assignment:** Username Validation
- **Date:** [10/21/25]

## Program Description
[The program will ask the user to enter a username, the program will then see what the user input is and validate it if it reaches the right requirements or not]

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
the usernames that work inlude: dev_user, test123, and admin
- Example invalid usernames and why they fail (at least two)
the usernames that did'nt work inlude: a, ab, and __test
- How you used the username-input file to test
those didnt work beacuase it didnt start with a lower case letter but started with a dash instead

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
