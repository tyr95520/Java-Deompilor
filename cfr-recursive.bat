@echo off
setlocal

set CFR_PATH="C:\Users\Alex\Desktop\Java-Deompilor\cfr-0.152.jar"
set FILE_DIR="C:\ConfluenceSrc\atlassian-confluence-7.13.6\confluence\WEB-INF"

for /r %FILE_DIR% %%f in (*.class) do (
	java -jar %CFR_PATH% "%%~ff" --outputdir "%%~dpf
)

for /r %FILE_DIR% %%f in (*.jar) do (
	java -jar %CFR_PATH% "%%~ff" --outputdir "%%~dpf
)

for /r %FILE_DIR% %%f in (*.war) do (
	java -jar %CFR_PATH% "%%~ff" --outputdir "%%~dpf
)

endlocal