#!/app/runring.sh -cgi

load "postgresqllib.ring"
Load "weblib.ring"

Import System.Web

New Page
{
	conninfo = "postgres://pzcwqusiacbqjf:221b14a6e438362bd88eb8bed7da1c89bd73da9ca56ded9e745f93e93221db13@ec2-107-21-224-61.compute-1.amazonaws.com:5432/d2qvnkkul8it1m?ssl=true"

	exit_nicely = func conn {
		PQfinish(conn)
	}

	conn = PQconnectdb(conninfo)

	if (PQstatus(conn) != CONNECTION_OK)
		text( "Connection to database failed: "+PQerrorMessage(conn) )
			call exit_nicely(conn)
	ok

	res = PQexec(conn, "
	CREATE TABLE salary (
	  Id serial  NOT NULL ,
	  Name text,
	  Salary int DEFAULT NULL
	);
	")

	PQclear(res)

	res = PQexec(conn, "
	CREATE TABLE users (
	  id serial  NOT NULL,
	  username text,
	  pwhash text,
	  salt text,
	  sessionid text,
	  email text
	); 
	")

	PQclear(res)

	PQfinish(conn)

	Text("Database Created!")
}


