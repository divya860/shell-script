#/bin/bash

# VAR1=$1
# VAR2=$2

# echo "scriptname : $0"

# echo "variable1 : $VAR1"

# echo "all : $@"


# echo 1

# echo 2

# echo 3

# echo 4

# for i in {1..100}
# do 
#    echo $i
# done

for i in $@
do 
  yum install $i -y
done
