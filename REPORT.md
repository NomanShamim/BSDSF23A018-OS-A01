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

## Later Sections
(Will be filled when completing Features 2–5)

