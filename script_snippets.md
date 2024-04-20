These commands all execute the script `base.sh` in different ways. Here are the differences between each command:

1. **`source base.sh`:**
   - Executes `base.sh` within the **current** shell environment.
   - Any changes made to the environment variables or shell settings by the script **will affect the current shell session**.
   - It's commonly used when you want to execute a script and **retain any environment changes** it makes.

2. **`bash base.sh`:**
   - This command runs the script `base.sh` using a **new sub-shell instance of the Bash shell**.
      - The settings are iherited from its parent shell
   - Any changes made to the environment variables or shell settings by the script **will only affect the child shell environment, not the current shell session**.
   - It's similar to running the script using the shebang (`#!/bin/bash`) line at the beginning of the script.

3. **`./base.sh`:**
   - `base.sh` must be executable (`chmod (u)+x base.sh`)
   - This command runs the script `base.sh` **using the interpreter specified in the shebang (`#!/bin/bash`)** line at the beginning of the script.
   - It executes the script as a **standalone program** in a new process.
   - Any changes made to the environment variables or shell settings by the script will only affect the child process environment, not the current shell session.

5. **`. ./base.sh` (or `source ./base.sh`):**
   - This command is similar to `source base.sh` and executes the script `base.sh` within the current shell environment.
   - However, it explicitly specifies the current directory (`.`) as part of the path to the script.
   - It's commonly used to ensure that the script is sourced from the current directory, especially when the current directory is not in the `PATH`.

In summary:
- Use `source` or `.` when you want to execute a script and retain any environment changes it makes within the current shell session.
- Use `bash` when you want to execute a script in a new shell environment.
- Use `./` to execute a script as a standalone program in a new process.
- Use `. ./` or `source ./` to ensure that the script is sourced from the current directory.
- Keeps environment changes: `source`, `.`
- Does not keep changes: `bash`, `sh`, or `./`

