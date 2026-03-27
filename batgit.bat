@echo off
echo Setting up Git configuration
git config --global user.name "%1"
git config --global user.email "%2"
echo Git configuration completed!
echo User name: "%1"
echo User email: "%2"
echo.
echo Now you can run git commit
echo.
echo Press any button to remove git configuration when done
pause > nul
git config --global --unset user.name
git config --global --unset user.email
echo Git configuration removed!
pause