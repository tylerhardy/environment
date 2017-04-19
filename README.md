# Environment
## gits
- git@github.com:tylerhardy/personalwiki.git
- git@github.com:tylerhardy/environment.git
- git@github.com:tylerhardy/macos_provision.git
- git@github.com:tylerhardy/adcleanup.git
## Windows
### **Git Pull Environment Repo**
- open cmd.exe
```
mkdir Developer
cd Developer
git clone git@github.com:tylerhardy/environment.git
```
### **setup DOSKEY**
```
cd environment
doskey.reg
env.cmd
```
### **setup Git-bash**
- [Git-bash](https://git-for-windows.github.io/)
- Check *Use Git and optional Unix tools from the Windows Command Prompt*.
### **cmder**
- [cmder](https://github.com/cmderdev/cmder/releases/latest)
- extract to C:\
#### Right-Click Menu Add
- run at least once then exit
- navigate to the environment folder
- run `.\cmder.exe /REGISTER ALL`
#### Customize cmder
[customization link](https://github.com/AmrEldib/cmder-powerline-prompt)
- install fonts
- Go to Cmder Settings > Main
- Choose Main console font to be Anonymous Pro
- Choose Alternative font to be Anonymice Powerline
- Modify the value of Unicode ranges to add: `E0A0; E0B0;`
- Save Settings
- Run command while in environment folder:
```
cd %CMDER_ROOT%/config  
mklink /H powerline_prompt.lua %USERPROFILE%\Developer\environment\powerline_prompt.lua
```