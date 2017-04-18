::Use doskey.reg to install - env.cmd must be in "%USERPROFILE%\\Dropbox\\Sandbox\\doskey\\env.cmd" or change path
@echo off
:: Temporary system path at cmd startup
set PATH=%PATH%;"C:\Program Files\Sublime Text 3\"
rem set PATH=%PATH%;"C:\bin\asciix32"
set PATH=%PATH%;"C:/Users/\tylerhardy/AppData/Roaming/Composer"
:: Add to path by command
:: DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
:: DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"


::EDITS
DOSKEY e=sublime_text %USERPROFILE%\Dropbox\Sandbox\doskey\env.cmd
DOSKEY save=%USERPROFILE%\Dropbox\Sandbox\doskey\env.cmd
::If you are in a cmd session, enter cmd to restart cmd and reload the env.cmd file.
DOSKEY editHost="C:\Program Files\Sublime Text 3\sublime_text.exe" "C:\Windows\System32\drivers\etc\hosts"

:: COMMANDS
DOSKEY ls=dir/d/o:g
DOSKEY clear=cls
DOSKEY pub=cat ~/.ssh/id_rsa.pub ^| clip ^&^& echo "copied to clipboard"
DOSKEY py=python $*
DOSKEY sl=sublime_text $*
DOSKEY vs=Code $*
DOSKEY n=notepad $*
DOSKEY ex=explorer $*
DOSKEY fs=findstr /s /i $*
DOSKEY ps=tasklist $*
DOSKEY rmrf=rd /q /s $*
DOSKEY touch=copy nul $* > nul

::PYTHON
DOSKEY ve="activate"
DOSKEY d="deactivate"
DOSKEY vedj="%USERPROFILE%\Dropbox\Sandbox\virtualenv\django\scripts\activate"
DOSKEY ddj="%USERPROFILE%\Dropbox\Sandbox\virtualenv\django\scripts\deactivate"
DOSKEY vepp="%USERPROFILE%\Dropbox\Sandbox\virtualenv\PythonProjects\scripts\activate"
DOSKEY dpp="%USERPROFILE%\Dropbox\Sandbox\virtualenv\PythonProjects\scripts\deactivate"
::GIT
DOSKEY gprofile=git config --global user.name "tylerhardy" ^&^& git config --global user.email "tylerhardy@gmail.com" ^&^& git config --global credential.helper cache
DOSKEY g="git "
DOSKEY gs=git status
DOSKEY ga=git add . ^&^& git status
DOSKEY gm=git add . ^&^& git status ^&^& git commit -m $*
DOSKEY gc!=git add . ^&^& git commit -m "quick commit" ^&^& git push ^&^& git status
DOSKEY gp=git push
DOSKEY glog=git log --graph --decorate  --all --pretty=oneline

:: COMMON DIRECTORIES
DOSKEY ..=cd ..
DOSKEY ...=cd ..\..
DOSKEY ....=cd ..\..\..
DOSKEY .....=cd ..\..\..\..
DOSKEY ~=cd %USERPROFILE%
DOSKEY dropbox=cd %USERPROFILE%\Dropbox\$*
DOSKEY docs=cd %USERPROFILE%\Documents
DOSKEY desk=cd %USERPROFILE%\Desktop
DOSKEY sand=cd %USERPROFILE%\Dropbox\Sandbox\$*
DOSKEY ws=cd %USERPROFILE%\Developer\$*
DOSKEY sites=cd %USERPROFILE%\Dropbox\Sites\$*
