SET MC_RELEASE=OFFICIAL
go run buildscripts/gen-ldflags.go > temp.txt
SET /p LDFLAGS=<temp.txt
go build -ldflags="%LDFLAGS%" -o %GOPATH%\bin\mc.exe