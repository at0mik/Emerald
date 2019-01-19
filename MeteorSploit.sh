red="\033[35;1m" 
clear
echo -e $red"       /\/\/\/\/  " 
echo -e $red"      /  \  /  /  "  
echo -e $red"     / M3t30r /   "   
echo -e $red"    /  Spl0it/    "  
echo -e $red"   / 0000   /     "
echo -e $red"  [ 000000 /      "
echo -e $red"   \ 0000 /       "
echo -e $red"    \____/        " 

echo -e $red"1-Scan"
echo -e $red"2-Deauth"
echo -e $red"3-Passive Attack"
echo -e $red"4-Hash"
echo -e $red"5-0Day Attack"
echo -e $red"6-KRACK  7-BruteForce" 

read -p " [>M3t30r<] " "choose"

if choose="1"
then
cd $HOME/MeteorSploit/

bash scan.sh 
fi
if choose="2" 
then
cd $HOME/MeteorSploit/

bash deauth.sh 
fi
if choose="3" 
then
cd $HOME/MeteorSploit/

bash p0f.sh
fi
if choose="4" 
then
cd $HOME/MeteorSploit/

bash hash.sh
fi
if choose="5"
then
cd $HOME/MeteorSploit/

read -p " [>TARGET<] " target5 

bash 0Day.sh target5 
fi
if choose="6" 
then
cd $HOME/MeteorSploit/

bash krack.sh 
fi
if  choose="7" 
then
cd $HOME/MeteorSploit/

bash brute.sh 
clear
fi

