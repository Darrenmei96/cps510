#!/bin/bash
usr="d2mei"
pw="01305179"
sqlinfo="$usr/$pw@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"


echo "*************************************************"
echo "* CPS510 - Section 3                            *"
echo "* Ryerson University                            *"
echo "* Group members: Jooha Kim, Jian Li, Darren Mei *"
echo "*************************************************"

getinput () {
	read input
	if [ "$input" == "1" ]; then
		createtables
		sleep .5
	elif [ "$input" == "2" ]; then
		poptables
		sleep .5
	elif [ "$input"	== "3" ]; then
		echo "Write your sql command: "
		read sqlcommand
		sqlplus64 -s "$sqlinfo"<<EOF
			$sqlcommand
			quit;
EOF
		sleep .5
	elif [ "$input" == "9" ]; then
		deltables
		sleep.5
	elif [ "$input" == "E" ] || [ $input == "e" ]; then
		exit
	else
		echo "INVALID INPUT!!!"
	fi
}

#export libraries if necessary
exportlibs () {
	export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
}

#create tables
createtables () {
	sqlplus64 "$sqlinfo" @tableinit.sql
}

#populate tables
poptables () {
	sqlplus64 "$sqlinfo" @tablepop.sql
}

#delete the tables
deltables () {
	sqlplus64 "$sqlinfo" @tabledel.sql
}

main () {
	exportlibs
	while true; do
		echo "Here are the options currently implemented: "
		echo "1: Create the sql tables"
		echo "2: Populate the sql tables"
		echo "3: Enter commands in the SQL environment"
		echo " "
		echo "9: Delete the sql table"
		echo "E: Exit the shell script"
		getinput
	done
}

main
