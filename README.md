# SVD-Data-Base
SVD API Database scripts

#How you import the DB
1. First you should download the MasterSQL_Structure.sql file or MasterSQL_with_data.sql
2. Then import it in to MySQL. 
3. It creates the DB and its objects.

#Folder Structure
1. ERD – This folder contains ERD diagrams. There are two types of ERD diagrams. “ERDx” includes the relationships between tables and “ERDx-full” includes the table content with column headings. These files exist from 3 formats named .png, .pdf and mwb. If you want to take a printout use .png or .pdf format. To open from MySQL Workbench use .mwb format.

2. SQL – Here there are all the .sql files named like svdims_x.y.z.sql. Here x means the version of the application, y means the release of the database version and z means the structure of the database. Z will be contains 0 or 1. If it is 0 then it includes the structure only. If there is 1 then it includes both data and the structure 
