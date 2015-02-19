# hostname of the system you are on?
(echo "Hostname : `hostname` Time : `date`") > assignment.log
# type and version of the operating system the machine machine is running? (Show both at the same time, with one command.)
(echo "Type & Version Name : `uname -ov` Time : `date`") >> assignment.log
# full path of home directory
(echo " home directory : `pwd` Time : `date`") >> assignment.log
# which other users are logged into the machine you are using?
(echo "Users Logged In : `w` Time : `date`") >> assignment.log
# what groups you belong to?
(echo "User Groups : `groups` Time : `date`") >> assignment.log
# list all the files in a dierecotry and the sub directory
(echo " Files") >> assignment.log
(ls -a) >> assignment.log
(echo "Time : `date`") >> assignment.log

