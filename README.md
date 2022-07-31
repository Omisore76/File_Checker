# File_Checker Script

Welcome to my file checker program!
This program was designed to help you keep your files organized and up-to-date. Here's how it works: first, you specify two folders - the "source" folder and the "destination" folder. Then, the program will scan both folders and compare the contents. Suppose any files or directories in the source folder are newer than the corresponding items in the destination folder. In that case, those items will be copied over. Otherwise, the program will skip them.
After that, the destination folder is compressed and archived. Finally, it is sent to an S3 bucket on Amazon.

