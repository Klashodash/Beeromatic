# Beeromatic
A random beer generator


Installation instructions:
__________________________________________________________________________________________________________
Downloading the files:
__________________________________________________________________________________________________________
1. In intellij, click File -> New -> Project from version control -> GitHub
2. Paste "https://github.com/Klashodash/Beeromatic" into the Git Repository URL bar, then click clone



Configuring the app:
__________________________________________________________________________________________________________
1. Click File -> Project structure -> Project and set the project SDK to Java 1.7
2. Configure the Tomcat server by clicking Run -> Edit configurations
3. Click the green plus (+) sign at the top left of this screen and click Tomcat server -> Local then click OK



Configuring the database:
__________________________________________________________________________________________________________
1. Create a database in your MySQL client of choice. Remember what you called it along with your username and password
2. Open the folder where the dump-Beertabase.sql file is in your OS explorer by right clicking on the file in the project explorer in intellij and clicking Show in explorer
3. Open a command line window in this folder
4. In the command line, run 'mysql -u {username} -p {database name} < dump-Beertabase.sql' and replace the variables in the brackets with your own information
5. In the BeerController java file, edit the DB, USER and PASS variables to your relevant database name, username and password respectively


Running the app
__________________________________________________________________________________________________________
1. In intellij, run the app by pressing Shift+F10
