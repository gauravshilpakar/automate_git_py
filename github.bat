@echo off

:: d is the current working directory where git is initialized
set d=%cd% 

:: type your git username here
set username=<username> 

:: changes path where the py script is located
    cd D:\CodeProjects\PY\automate_git_py
python script.py %d%

:: takes the last folder of the current directory for the repository name
set d1=%d:~0,-1%

for %%f in (%d1%) do set repo_name=%%~nxf

:: move back to the original directory
 cd %d%

git init
git remote add origin https://github.com/%username%/%repo_name%

echo %repo_name% > README.md
git add *
git commit -m "inital commit"
git push origin master

echo Git Repository %repo_name% successfully created.
