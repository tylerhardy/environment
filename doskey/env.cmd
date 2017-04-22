::Use doskey.reg to install - env.cmd must be in "%USERPROFILE%\\Developer\\environment\\doskey\\env.cmd" or change path
@echo off
:: Temporary system path at cmd startup
set PATH=%PATH%;"C:\Program Files\Sublime Text 3\"
rem set PATH=%PATH%;"C:\bin\asciix32"
set PATH=%PATH%;"C:/Users/\tylerhardy/AppData/Roaming/Composer"
:: Add to path by command
:: DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
:: DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"


::EDITS
DOSKEY e=sublime_text %USERPROFILE%\Developer\environment\doskey\env.cmd
DOSKEY save=%USERPROFILE%\Developer\environment\doskey\env.cmd
::If you are in a cmd session, enter cmd to restart cmd and reload the env.cmd file.
DOSKEY editHost="C:\Program Files\Sublime Text 3\sublime_text.exe" "C:\Windows\System32\drivers\etc\hosts"

:: COMMANDS
rem DOSKEY ls=dir/d/o:g
DOSKEY ls=ls -Av --color $*
DOSKEY ll=ls -lGhA --color $* -Av --color $*
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
DOSKEY ve=".\Scripts\activate"
DOSKEY d=".\Scripts\deactivate"
rem DOSKEY ve="activate"
rem DOSKEY d="deactivate"
rem DOSKEY vedj="%USERPROFILE%\Dropbox\Sandbox\virtualenv\django\scripts\activate"
rem DOSKEY ddj="%USERPROFILE%\Dropbox\Sandbox\virtualenv\django\scripts\deactivate"
::GIT
DOSKEY gprofile=git config --global user.name "tylerhardy" ^&^& git config --global user.email "tylerhardy@gmail.com" ^&^& git config --global credential.helper cache
DOSKEY g="git "
DOSKEY gs=git status
DOSKEY ga=git add . ^&^& git status
DOSKEY gm=git add . ^&^& git status ^&^& git commit -m $*
DOSKEY gc!=git add . ^&^& git commit -m "quick commit" ^&^& git push ^&^& git status
DOSKEY gpush=git push
DOSKEY gpull=git pull
DOSKEY glog=git log --graph --decorate  --all --pretty=oneline

:: COMMON DIRECTORIES
DOSKEY ..=cd ..
DOSKEY ...=cd ..\..
DOSKEY ....=cd ..\..\..
DOSKEY .....=cd ..\..\..\..
DOSKEY ~=cd %USERPROFILE%
DOSKEY venv=cd %USERPROFILE%\Developer\venv\$*
DOSKEY dropbox=cd %USERPROFILE%\Dropbox\$*
DOSKEY docs=cd %USERPROFILE%\Documents
DOSKEY desk=cd %USERPROFILE%\Desktop
DOSKEY sand=cd %USERPROFILE%\Dropbox\Sandbox\$*
DOSKEY ws=cd %USERPROFILE%\Developer\$*
DOSKEY env=cd %USERPROFILE%\Developer\environment\$*
