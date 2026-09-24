@echo off
cd /d "D:\ÍøÕ¾\GithubÖ÷Ò³"
if not exist . (
    echo ERROR: Directory not found!
    pause
    exit /b
)
echo Current directory: %cd%
echo =====================================

git init
git branch -M main
git add .
git commit -m "Initial commit" --allow-empty
git remote remove origin 2>nul
git remote add origin git@github.com:apgsm/apgsm.git
git push -u origin main --force

echo Operation finished. Check above logs for errors.
pause