# Connecting to a data base
#
# You can use the RODBC package to connect to a database and either retrieve data from the database,
# execute stored procedures, as well as many other things. Below is the structure that you can use to 
# retrieve data from a SQL Server database that authenticates you using windows authentication.
library(RODBC)

server.name = "<Server Name>"
db.name = "<database name"
sql.statement = "<SQL Statement that returns a result set>"

# The line of code below builds your connection string
connection.string = paste("driver={SQL Server}", ";", "server=", server.name, ";", "database=", db.name, ";", "trusted_connection=true", sep = "")

# The line below creates your connection object
conn <- odbcDriverConnect(connection.string)

# The line below executes your SQL statement and passes the data to a R data frame
GameData <- sqlQuery(channel = conn, sql.statement)

# The line of code below closes the connection object
odbcClose(conn)


