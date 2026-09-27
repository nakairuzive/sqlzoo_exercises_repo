# sqlzoo_exercises_repo

Code repository documenting all the exercises I did on SQLZoo, along with a summary of what I learned. The summaries on consist of notes which can be found on the [Notes.md](Notes.md) document and a cheat sheet that can be found on the [CheatSheet.md](CheatSheet.md) document. 

> [!NOTE]               
> ⭐ If you found this repository helpful, please consider giving it a star!

## Building the Database(s)

SQLZoo uses various data tables for the exercises. Hence, I will be replicating these tables.


### The following guide is for VS Code:

#### Step 1: Install a local database tool
- Install the **SQLite Viewer** extension
- Install the **SQLTools** extension

#### Step 2: Set up your project folder
```
mkdir SQLZoo-local
cd SQLZoo-local
```

#### Step 3: Copy the Schema and Data

1. Create a file called **schema.sql**, we will create the table here.
```
-- schema.sql
CREATE TABLE world (
    name TEXT,
    continent TEXT,
    area INTEGER,
    population INTEGER,
    gdp INTEGER
);
```

2. Create a file called **seed.sql**, these are the queries for inserting data into the table.
```
-- seed.sql
INSERT INTO world (name, continent, area, population, gdp) VALUES
('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
('Albania', 'Europe', 28748, 2831741, 12960000000);
```
>[!Tip]             
> If you need to add more rows in the future first                 
> run this command ```sqlite3 SQLZoo.db "DELETE FROM movies;" ```          
> then run ```sqlite3 SQLZoo.db ".read seed.sql"```


#### Step 4: Build and run your local database

In the terminal, run the following commands

1. Create the database
```
sqlite3 SQLZoo.db
```
2. Import schema and data files
```
.read schema.sql
.read seed.sql
```

3. Test that it works
```
.tables // returns a list of all the tables in the database
.mode box  //data will be displayed in tables
SELECT * FROM world;
```

4. Exit
```
.exit
```

>[!Tip]             
> You can create multiple tables using this same format and files. There is no need to create a new database; just keep adding tables.

## Writing the solutions

#### Step 1. Create a folder to store the solutions for each lesson                  
e.g. 🗁 00_select_basic

#### Step 2. Create a solutions file in the folder. 
e.g.                          
    🗁 00_select_basic                                          
                    └─  🗎 solutions.sql

### Step 3. Run the queries in the **SQLZoo-local** directory
```
-- Use either of these commands
sqlite3 SQLZoo-local/SQLZoo.db ".read 00_select_basic/solutions.sql"

-- If you would like the data to be displayed with columns and headers
sqlite3 -header -column SQLZoo-local/SQLZoo.db ".read 00_select_basic/solutions.sql"
```

## Lesson Progress

Please view all the lesson progress notes and to-do list on the [LessonProgress.md](LessonProgress.md) document