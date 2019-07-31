![Aloha Project Logo](https://raw.githubusercontent.com/estradav/aloha/master/images/AP_horizontal.png)
***

# SQL Querys

Oh... Hello applicant, see you again! does it look like it's time to start playing with data?

Here you will find some SQL queries for you to solve in your **Linux Server** with a **MySQL database**. To execute the 
queries you will have to import the ```world``` database to your **MySQL server**. If you need more information to perform this process, 
**continue reading this file**.

## Database structure

- **Country table**: Information about countries of the world.
- **City table**: Information about some of the cities in those countries.
- **Country language table**: Languages spoken in each country.

## Installing the world sample database

1. Connect to the MySQL server using the **mysql** command-line client with the following command:

```shell
$ mysql -u root -p
```

Enter your password when prompted. A non-root account can be used as long as the account has privileges to create new databases.

2. Execute the ```world.sql``` script to create the database structure, and insert the data, by using the following command:

```shell
mysql> SOURCE /home/user/world.sql
```

Replace ***/home/user*** with the path to the ```world.sql``` file on your system.

3. Confirm that the sample world database is installed correctly. Execute the following statements. You should see output similar to that shown here.

```shell
mysql> USE world;
Database changed

mysql> SHOW TABLES;
+-----------------+
| Tables_in_world |
+-----------------+
| city            |
| country         |
| countrylanguage |
+-----------------+
3 rows in set (0.00 sec)
```

**You now have the world sample database installed.**

# Thanks to

The article of MySQL Documentation: [Setting Up the world Database](https://dev.mysql.com/doc/world-setup/en/).

The sample data used in the ```world``` database is [Copyright Statistics Finland](http://www.stat.fi/worldinfigures).
