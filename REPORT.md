# REPORT.md - PA-01

## Student Info
- Name: Noman Shamim
- Roll No: BSDSF23A018

---

## Part 1 - Project Scaffolding & Version Control

### Steps Performed
1. **Created GitHub repository**  
   - Repository name: `BSDSF23A018-OS-A01` (followed exact naming rule: ROLL_NO-OS-A01).  
   - Initialized repository on GitHub with a `README.md`.  

2. **Cloned repository using HTTPS**  
   - Command used:  
     ```bash
     git clone https://github.com/NomanShamim/BSDSF23A018-OS-A01.git
     ```
   - Used a **Personal Access Token (PAT)** for authentication instead of password (as GitHub no longer allows password authentication).  

3. **Created project directory structure**  
   - Inside the repo, added the following folders:  
     - `src/` → source files  
     - `include/` → header files  
     - `lib/` → libraries  
     - `bin/` → executables  
     - `obj/` → object files  
   - Added `.gitkeep` placeholders so Git can track empty directories.  

4. **Created `.gitignore` file**  
   - Ignored compiled objects (`*.o`), temp files (`*~`, `.swp`), and macOS/OS metadata files (`.DS_Store`).  
   - Ensured `bin/`, `lib/`, and `obj/` folders stay tracked but compiled outputs inside them are ignored.  

5. **Created `REPORT.md`**  
   - Added student details.  
   - Documented scaffolding and version control steps here.  

6. **Committed and pushed changes to GitHub**  
   - Commands used:  
     ```bash
     git add .
     git commit -m "Feature-1: Added project structure (src, include, lib, bin, obj), REPORT.md, and .gitignore"
     git push origin main
     ```
   - Verified changes on GitHub web interface.  

---
## Part 2 - Multi-file Program with Makefile

### Steps Performed
1. Created header file `include/hello.h` with function prototype.
2. Created implementation file `src/hello.c` with function definition.
3. Created driver file `src/main.c` calling `print_hello()`.
4. Wrote `Makefile`:
   - Compiles `.c` → `.o` into `obj/`
   - Links `.o` → executable `bin/program`
   - Includes `all` and `clean` targets
5. Built and tested using `make` and ran `./bin/program`.
6. Cleaned project using `make clean`.

### Report Question (Linking Rule)
- **Rule:**  
  ```make
  $(TARGET): $(OBJECTS)
  	$(CC) $(CFLAGS) -o $@ $^


- Created an annotated tag `v1.0` to mark the first stable version of the project (multi-file program with Makefile).
- Commands used:
  ```bash
  git tag -a v1.0 -m "First release: multi-file program with Makefile"
  git push origin v1.0


### Tag and Release
- Created an annotated tag `v1.0` to mark the first stable version of the project (multi-file program with Makefile).
- Commands used:
  ```bash
  git tag -a v1.0 -m "First release: multi-file program with Makefile"
  git push origin v1.0
  ```
- Purpose of tags:  
  Tags are fixed pointers to specific commits. They are commonly used to mark release versions so the exact code at that point can always be retrieved. Unlike branches, tags do not move when new commits are added.
- Difference between tag types:  
  - **Lightweight tag:** just a name pointing directly to a commit (like a bookmark).  
  - **Annotated tag:** a full Git object stored with metadata (message, tagger name, date). Recommended for official releases.
