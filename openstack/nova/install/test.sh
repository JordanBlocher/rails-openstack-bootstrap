#ping www.google.com
#trap sig_handler SIGTERM

#echo "OK!"

#i=0
#while [ $i -lt 4 ] 
#do
#    printf "Choose (m) for Milestone release (b) for Bleeding Edge\n"
#    read ch
#    if [ "$ch" == "m" ];
#    then 
#        echo "Chose m\n"
#        break
#    elif [ "$ch" == "b" ]; 
#    then 
#        echo "Chose b\n"
#        break
#    elif [ $i -eq 3 ];
#    then
#        printf "Invalid input. Exiting\n" 
#        exit 1
#    fi
#    i=$(($i+1))
#done
#printf "Testing\nnewlines\n\tand\ttabs\n">> test.txt
cd ../..

