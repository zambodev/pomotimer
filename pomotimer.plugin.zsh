# $1 work time (minutes)
# $2 break time (minutes)
# $3 number of rounds
pomotimer() {

	if [[ $1 == "-h" || $1 == "--help" ]];
	then
		echo "$0 <work time> <break time> <no. rounds>"
		return 0
	fi

	regex="^[0-9]+$"
	if ! [[ $1 =~ $regex && $2 =~ $regex && $3 =~ $regex ]]; then
		echo "Error: One or more paramenters are not numbers!"
		return 1
	fi

	echo "Work time:" $1 "min"
	echo "Break time:" $2 "min"
	echo "Rounds:" $3

	timearr=($1 $2)

	(for i in {1..$3};
	do
		for j in {1..2};
		do
			sleep $((${timearr[j]} * 60)) && 
			
			if [[ $j -eq 1 ]];
			then
				notify-send -t 2000 -u critical "Time's up!" "It's time for a break!"
			else
				notify-send -t 2000 -u critical "Time's up!" "It's time to get back to work!"
			fi
		done
	done &) 2> /dev/null

	return 0
}

