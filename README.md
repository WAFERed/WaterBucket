<p align="center">
  <img width="300" height="300" src="https://raw.githubusercontent.com/WAFERed/WaterBucket/main/.resources/WATERBUCKET.png">
</p>

# WaterBucket
Waterbucket is an OpenSource terminal based project under the WAFER organization. It is written in shell script currently but will be ported to python to extend its availability to other operating systems. Currently, in order to use this project on other operating systems such as Windows, the user can use WSL (Windows Subsystem for Linux) or by simply installing Bash from the windows store.

## Why?
The WAFER project fetches it's data from a lot of different web servers. To automate downloading needed files for the project, Water Bucket usues a modified version of wget called [extwget](https://github.com/SyedMustafaAhmad/extwget) to source from URL(s), lists of URLs or text files.

## Dependencies
- Git
- POSIX Shell

## Setup
Simply, open a terminal and run:
```console
git clone https://github.com/WAFERed/WaterBucket.git
```

## How To Use
For simple downloads,
```console
./extwget.sh [URL]
```
For multiple downloads,
```console
./extwget.sh [URL1] [URL2] …
```
For sources in a file
```console
./extwget.sh [FILEPATH]
```
For already prepared sources,
```console
./extwget.sh sources/[FILENAME]
```

## Contributing
To contribute, fork the project or create a pull request. Alternatively, contact us using any of the below methods,
- Email Address: : <a href = "mailto: email.wafer@gmail.com">email.wafer@gmail.com</a>
- Website: [projectwafer.com](https://www.projectwafer.com) 
