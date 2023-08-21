@echo off
setlocal

set CFR_PATH="PATH\of\cfr-0.152.jar"
set FILE_DIR="PATH\of\compileFileDir"

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
