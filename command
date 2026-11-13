#Important Always bring the IS last and all the components first.
#Note everything on linux is a file.
#linux version
cat /etc/redhat-release
uname -r "show OS version info"

#clear terminal or clrt+l

#Linux users
login to root sudo su -
switch user
su -user e.g. su - wbmadm
sudo deluser username (delete user)
adduser student "add new user"
passwd student "change password"
sudo usermod -aG sudo student "give sudo privilages"

#show about the host and user info.
whoami "show the user"
hostname "show hostname"

#list files
ls or ll
-l long listing
-S size
************************************************************
Regular File	-	Anywhere	Stores standard data like text, scripts, images, and compiled programs.
Directory	d	Anywhere	Acts as a folder that maps filenames to inodes to organize other files.
Symbolic Link	l	Anywhere	Functions as a shortcut or pointer referencing another file or directory.
Character Device	c	/dev/	Interfaces with hardware that transfers data sequentially, byte by byte.
Block Device	b	/dev/	Interfaces with storage hardware that reads and writes data in fixed-size blocks.
Named Pipe (FIFO)	p	/tmp/, /var/	Enables one-way, first-in-first-out data transfer between two processes.
Socket File	s	/run/, /tmp/	Allows two-way (full-duplex) inter-process communication on the same host.
*************************************************************
ls -lrt | grep server.log
ls -lrt | grep 100100582803


#file permissions
u- user
g- group
o- others
chmod 777 filename
read -4
write -2
excute -1
none permissions -0

#navigate directories
cd - switches your current working directory back to the previous directory you were in and prints its path.
cd ~/ appends home directory
cd .. go one level down

#creating files in linux
touch filename
bash script--- create a file with .sh ext and add commands/ bash code. To run ./filename.sh


nohup - ignores HUP(hangup) signal

#copy or move
cp -r dir1  dir2
mv dir1 dir2

#view files large and small 
tail -f server.log
tail -100f msi.log

cat _full_.log | grep -i erro
more filename.ext and then /"search string"

# linux processess
ps -ef | grep jvm
ps -ef | grep java(MSI)
ps -fu wbmadm( list processes run on the server with specific user)
ps -fu tomcat( list processes run on the server with specific user)
top list all the processes on the server (more to less)
kill -9 PID
kill -15 PID

#linux disk/storage
df -k
df -h
du -h list space of foldersdf
du -sh lists empty space
du -a | sort -n -r | head -n 20


# looking for information in a file or directory
grep MSI329 msi.log
grep OutOfMemory msi.log
find . -type f -exec grep 'userhome' /dev/null {} +
find "debug" in the dir and sub dir
$find . -name \*.cpp -exec grep -q "debug" '{}' \; -print
E.g: find . -type f -exec grep '100100582803' /dev/null {} +
find -name "server.xml"
find . -name server.xml
find / -name "server.xml"


#linux networking
ip a " inet is ip the address of the mechine"
ipconfig " inet is ip the address of the mechine"
echo "this was test" >> test.txt "add text to the second line in the file"
ping "Test connection to a server/device"
netdiscover

#start or reboot linux server
sudo reboot or shutdown
*****************
#installing software from source

git clone https://github.com/libsdl-org/SDL.git -b SDL2
cd SDL
mkdir build
cd build
../configure
make
sudo make install

**********************************


