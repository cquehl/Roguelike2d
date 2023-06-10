REM @echo off

REM Change to the Unity project folder
cd "C:\Users\Charl\GamJam Baseline"

REM Initialize a Git repository if it's not already initialized
if not exist .git (
  git init
)

REM Add the contents of your specific .gitignore file
copy "C:\Users\Charl\GamJam Baseline\.gitignore" .gitignore /Y

REM Add all files to the repository
git add .

REM Commit the changes
git commit -m "Update Unity project"

REM Add the remote repository
git remote add origin https://github.com/cquehl/Roguelike2d

REM Push the changes to the remote repository
git push -u origin master