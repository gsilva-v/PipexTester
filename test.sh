#Recompilando
printf "\033[36mCOMPILING PROGRAM\n\033[0m"
make re


echo -ne "Invalid Tests: Invalid input " 
echo  " ./pipex inf \"grep a\" \"wc -l\" outfile "
./pipex inf "grep a" "wc -l" outfile
echo $? > resulprog
<inf grep a | wc -l > outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulpipe resulprog;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m"; 
fi
echo -e "\n"



echo -ne "Invalid Tests: Invalid command " 
echo  " ./pipex infile \"catt\" \"wcc -l\" outfile "
./pipex infile "catt" "wcc -l" outfile
echo $? > resulprog
<infile catt | wcc -l> outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulpipe resulprog;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m"; 
fi
echo -e "\n"

echo -ne "Invalid Tests: Invalid args " 
echo  " ./pipex infile  outfile "
./pipex infile outfile
echo $? > resulprog
<infile > outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulpipe resulprog;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m"; 
fi
echo -e "\n"



echo -ne "Test 1:" 
echo  " ./pipex infile \"tr a b\" \"tr b c\" outfile "
./pipex infile2 "tr a b" "tr b c" outfile && echo $? > resulprog
<infile2 tr a b | tr b c> outpipe && echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulprog resulpipe;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo -e "\n"



echo -ne "Test 2:" 
echo  " ./pipex infile \"cat\" \"wc -l\" outfile "
./pipex infile "cat" "wc -l" outfile 
echo $? > resulprog
<infile cat | wc -l > outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo 
echo -ne "Exit check: "
if diff resulprog resulpipe;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo -e "\n"



echo -ne "Test 3:  " 
echo  " ./pipex infile \"ls -la\" \"wc -l\" outfile "
./pipex infile "ls -la" "wc -l" outfile
echo $? > resulprog
<infile ls -la | wc -l > outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulpipe resulprog;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m"; 
fi
echo -e "\n"



echo -ne "Test 4:  " 
echo  " ./pipex infile \"grep a\" \"wc -l\" outfile "
./pipex infile "grep a" "wc -l" outfile
echo $? > resulprog
<infile grep a | wc -l > outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulpipe resulprog;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m"; 
fi
echo -e "\n"


echo -ne "Test 5:  " 
echo  " ./pipex infile2 \"pwd\" \" tr o b\" outfile "
./pipex infile2 "pwd" "tr o b" outfile
echo $? > resulprog
<infile2 pwd | tr o b > outpipe
echo $? > resulpipe
echo -ne "Output check: "
if diff outpipe outfile;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m";
fi
echo
echo -ne "Exit check: "
if diff resulpipe resulprog;
    then printf "\033[32m[OK]\033[0m" ;
else printf "\033[31m[KO]\033[0m"; 
fi
echo -e "\n"
