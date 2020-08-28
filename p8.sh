var1="$1"
if [ ! -n "$var1" ]
then
    read -p "Enter first file name : " filename1
else
    filename1=$1
fi

var2="$2"
if [ ! -n "$var2" ]
then
    read -p "Enter second file name : " filename2
else
    filename2=$2
fi

if



Content1=`cat $filename1`
Content2=`cat $filename2`

if [ "$Content1" == "$Content2" ]
then
    echo "$filename1 and $filename2 are same"
    read -p "do yo want to delete $filename2 [Y/N] : " opt
    if [ $opt == "Y" ]
    then
        echo "deleting file $filename2"
        rm $filename2
    else
        echo "exiting"
    fi
else
    echo "$filename1 and $filename2 are not same"
fi