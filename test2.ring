load "postgresqllib.ring"

conninfo = "postgres://pzcwqusiacbqjf:221b14a6e438362bd88eb8bed7da1c89bd73da9ca56ded9e745f93e93221db13@ec2-107-21-224-61.compute-1.amazonaws.com:5432/d2qvnkkul8it1m?ssl=true"

exit_nicely = func conn {
	PQfinish(conn)
	shutdown(1)
}

? "before connection!"
conn = PQconnectdb(conninfo)
? "After connection!"

if (PQstatus(conn) != CONNECTION_OK)
	fputs(stderr, "Connection to database failed: "+PQerrorMessage(conn))
        call exit_nicely(conn)
ok

? "connected!"

res = PQexec(conn, "BEGIN")
if PQresultStatus(res) != PGRES_COMMAND_OK
	fputs(stderr, "BEGIN command failed: " + PQerrorMessage(conn))
	PQclear(res)
	call exit_nicely(conn)
ok

PQclear(res)

res = PQexec(conn, "DECLARE myportal CURSOR FOR select * from pg_database")
if PQresultStatus(res) != PGRES_COMMAND_OK
	fputs(stderr, "DECLARE CURSOR failed: " + PQerrorMessage(conn))
	PQclear(res)
	call exit_nicely(conn)
ok
PQclear(res)

res = PQexec(conn, "FETCH ALL in myportal")
if PQresultStatus(res) != PGRES_TUPLES_OK
	fputs(stderr, "FETCH ALL failed: " + PQerrorMessage(conn))
	PQclear(res)
	exit_nicely(conn)
ok

nFields = PQnfields(res)
for i = 1 to nFields
        ? PQfname(res, i-1) 
next

? copy("*",60)

for i = 1 to PQntuples(res)
	for j=1 to nFields
		see PQgetvalue(res, i-1, j-1) + " "
	next
	see nl
next

PQclear(res)

res = PQexec(conn, "CLOSE myportal")
PQclear(res)

res = PQexec(conn, "END")
PQclear(res)

PQfinish(conn)