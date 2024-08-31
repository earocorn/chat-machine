@echo off
title CHAT MACHINE
color 0a
pushd \\%username%\Users\Public\
if not exist \\%username%\Users\Public\chatFiles mkdir chatFiles
pushd \\%username%\Users\Public\chatFiles
if not exist \\%username%\Users\Public\chatFiles\chatLog.txt echo -=CHAT MACHINE=- > chatLog.txt
if not exist \\%username%\Users\Public\chatFiles\chatLog.txt echo Created by Alex Almanza. >> chatLog.txt
goto chatLoggerStartup 
pushd C:\Users\%username%\Desktop\
:menu
echo @echo off > ChatMachine.bat
echo title CHAT MACHINE >> ChatMachine.bat
echo color 0a >> ChatMachine.bat
echo pushd \\%username%\Users\Public\chatFiles >> ChatMachine.bat
echo :menu >> ChatMachine.bat
echo echo ==================== >> ChatMachine.bat
echo echo -={[CHAT MACHINE]}=- >> ChatMachine.bat
echo echo ==================== >> ChatMachine.bat
echo echo. >> ChatMachine.bat
echo set /P nickname=Type your nickname:  >> ChatMachine.bat
echo echo %%nickname%% will be your display name! >> ChatMachine.bat
echo echo. >> ChatMachine.bat
echo echo Press any key to continue to the CHAT MACHINE. >> ChatMachine.bat
echo pause ^>nul >> ChatMachine.bat
echo start chatLogger.bat >> ChatMachine.bat
echo goto chatMachine >> ChatMachine.bat
goto chatMachine
:chatMachine
echo :chatMachine >> ChatMachine.bat
echo cls >> ChatMachine.bat
echo set /P message=Type your message: >> ChatMachine.bat
echo echo [%%nickname%%]: %%message%% ^>^> chatLog.txt >> ChatMachine.bat
echo goto chatMachine >> ChatMachine.bat
:chatClear
echo @echo off >> ChatClear.bat
echo title CHAT MACHINE CLEARER >> ChatClear.bat
echo color 0a >> ChatClear.bat
echo pushd \\%username%\Users\Public\chatFiles >> ChatClear.bat
echo del chatLog.txt >> ChatClear.bat
echo echo -=CHAT MACHINE=- ^> chatLog.txt >> ChatClear.bat
echo echo Created by: Alex Almanza. ^>^> chatLog.txt >> ChatClear.bat
echo cls >> ChatClear.bat
echo echo Clearing complete! >> ChatClear.bat
echo echo Press any key to exit. >> ChatClear.bat
echo pause ^>nul >> ChatClear.bat
echo exit >> ChatClear.bat
goto finishedProduct
:chatLoggerStartup
if exist chatLogger.bat del chatLogger.bat
echo @echo off > chatLogger.bat
echo title CHAT MACHINE LOGGER >> chatLogger.bat
echo color 0b >> chatLogger.bat
echo :main >> chatLogger.bat
echo cls >> chatLogger.bat
echo type chatLog.txt >> chatLogger.bat
echo ping localhost -n 1 ^>nul >> chatLogger.bat
echo goto main >> chatLogger.bat
goto menu
:finishedProduct
cls
echo CHAT MACHINE SYSTEM CREATED.
ECHO SHARE THE ChatMachine.bat FILE TO EVERYONE THAT YOU WANT TO HAVE ACCESS TO THE CHAT MACHINE.
echo SHARE THE ChatClear.bat FILE TO ALL MODERATORS OF THE CHAT SYSTEM.
ECHO PRESS ANY KEY TO FINISH.
PAUSE >NUL
EXIT