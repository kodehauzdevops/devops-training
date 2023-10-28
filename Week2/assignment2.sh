
#!/bin/bash


mkdir assignmentfolder
mkdir assignmentfolder/assignment2


ROOTDIR=assignmentfolder/assignment2

echo "$ROOTDIR"

touch $ROOTDIR/file1.txt
touch $ROOTDIR/file2.txt
touch $ROOTDIR/file3.txt

cd $ROOTDIR


echo "This is first line in file1" > file1.txt
echo "This is first line in file2" > file2.txt
echo "This is first line in file3" > file3.txt



echo "This is second line in file1" >> file1.txt
echo "This is second line in file2" >> file2.txt
echo "This is second line in file3" >> file3.txt



echo "This is third line in file1" >> file1.txt
echo "This is third line in file2" >> file2.txt
echo "This is third line in file3" >> file3.txt



ls

head -n1 file1.txt
head -n1 file2.txt
head -n1 file3.txt
