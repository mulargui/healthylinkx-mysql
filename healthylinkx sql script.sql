/* this script is tested with file npidata_20050523-20131013.csv */
/* http://www.cms.gov/Regulations-and-Guidance/HIPAA-Administrative-Simplification/NationalProvIdentStand/DataDissemination.html */
/* http://nppes.viva-it.com/NPI_Files.html */

/* create the database */
create database healthylinkx;
use healthylinkx;

/* create table to dump the csv file */
CREATE TABLE npidata1 (
NPI VARCHAR(10) NOT NULL, PRIMARY KEY(NPI),
Entity_Type_Code VARCHAR(1) DEFAULT NULL,
Replacement_NPI VARCHAR(10),
Employer_Identification_Number_EIN VARCHAR(9) DEFAULT NULL,
Provider_Organization_Name_Legal_Business_Name VARCHAR(70) DEFAULT NULL,
Provider_Last_Name_Legal_Name VARCHAR(35) DEFAULT NULL,
Provider_First_Name VARCHAR(20) DEFAULT NULL,
Provider_Middle_Name VARCHAR(20) DEFAULT NULL,
Provider_Name_Prefix_Text VARCHAR(5) DEFAULT NULL,
Provider_Name_Suffix_Text VARCHAR(5) DEFAULT NULL,
Provider_Credential_Text VARCHAR(20) DEFAULT NULL,
Provider_Other_Organization_Name VARCHAR(70) DEFAULT NULL,
Provider_Other_Organization_Name_Type_Code VARCHAR(1) DEFAULT NULL,
Provider_Other_Last_Name VARCHAR(35) DEFAULT NULL,
Provider_Other_First_Name VARCHAR(20) DEFAULT NULL,
Provider_Other_Middle_Name VARCHAR(20) DEFAULT NULL,
Provider_Other_Name_Prefix_Text VARCHAR(5) DEFAULT NULL,
Provider_Other_Name_Suffix_Text VARCHAR(5) DEFAULT NULL,
Provider_Other_Credential_Text VARCHAR(20) DEFAULT NULL,
Provider_Other_Last_Name_Type_Code VARCHAR(1) DEFAULT NULL,
Provider_First_Line_Business_Mailing_Address VARCHAR(55) DEFAULT NULL,
Provider_Second_Line_Business_Mailing_Address VARCHAR(55) DEFAULT NULL,
Provider_Business_Mailing_Address_City_Name VARCHAR(40) DEFAULT NULL,
Provider_Business_Mailing_Address_State_Name VARCHAR(40) DEFAULT NULL,
Provider_Business_Mailing_Address_Postal_Code VARCHAR(20) DEFAULT NULL,
Provider_Business_Mailing_Address_Country_Code VARCHAR(2) DEFAULT NULL,
Provider_Business_Mailing_Address_Telephone_Number VARCHAR(20) DEFAULT NULL,
Provider_Business_Mailing_Address_Fax_Number VARCHAR(20) DEFAULT NULL,
Provider_First_Line_Business_Practice_Location_Address VARCHAR(55) DEFAULT NULL,
Provider_Second_Line_Business_Practice_Location_Address VARCHAR(55) DEFAULT NULL,
Provider_Business_Practice_Location_Address_City_Name VARCHAR(40) DEFAULT NULL,
Provider_Business_Practice_Location_Address_State_Name VARCHAR(40) DEFAULT NULL,
Provider_Business_Practice_Location_Address_Postal_Code VARCHAR(20) DEFAULT NULL,
Provider_Business_Practice_Location_Address_Country_Code VARCHAR(2) DEFAULT NULL,
Provider_Business_Practice_Location_Address_Telephone_Number VARCHAR(20) DEFAULT NULL,
Provider_Business_Practice_Location_Address_Fax_Number VARCHAR(20) DEFAULT NULL,
Provider_Enumeration_Date VARCHAR(10) DEFAULT NULL,
Last_Update_Date VARCHAR(10) DEFAULT NULL,
NPI_Deactivation_Reason_Code VARCHAR(2) DEFAULT NULL,
NPI_Deactivation_Date VARCHAR(10) DEFAULT NULL,
NPI_Reactivation_Date VARCHAR(10) DEFAULT NULL,
Provider_Gender_Code VARCHAR(1) DEFAULT NULL,
Authorized_Official_Last_Name VARCHAR(35) DEFAULT NULL,
Authorized_Official_First_Name VARCHAR(20) DEFAULT NULL,
Authorized_Official_Middle_Name VARCHAR(20) DEFAULT NULL,
Authorized_Official_Title_or_Position VARCHAR(35) DEFAULT NULL,
Authorized_Official_Telephone_Number VARCHAR(20) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_1 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_1 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_1 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_1 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_2 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_2 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_2 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_2 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_3 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_3 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_3 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_3 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_4 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_4 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_4 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_4 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_5 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_5 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_5 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_5 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_6 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_6 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_6 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_6 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_7 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_7 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_7 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_7 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_8 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_8 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_8 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_8 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_9 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_9 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_9 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_9 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_10 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_10 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_10 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_10 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_11 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_11 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_11 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_11 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_12 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_12 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_12 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_12 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_13 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_13 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_13 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_13 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_14 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_14 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_14 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_14 VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_15 VARCHAR(10) DEFAULT NULL,
Provider_License_Number_15 VARCHAR(20) DEFAULT NULL,
Provider_License_Number_State_Code_15 VARCHAR(2) DEFAULT NULL,
Healthcare_Provider_Primary_Taxonomy_Switch_15 VARCHAR(1) DEFAULT NULL,
Other_Provider_Identifier_1 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_1 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_1 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_1 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_2 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_2 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_2 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_2 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_3 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_3 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_3 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_3 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_4 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_4 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_4 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_4 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_5 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_5 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_5 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_5 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_6 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_6 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_6 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_6 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_7 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_7 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_7 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_7 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_8 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_8 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_8 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_8 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_9 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_9 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_9 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_9 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_10 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_10 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_10 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_10 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_11 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_11 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_11 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_11 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_12 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_12 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_12 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_12 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_13 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_13 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_13 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_13 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_14 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_14 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_14 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_14 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_15 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_15 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_15 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_15 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_16 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_16 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_16 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_16 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_17 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_17 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_17 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_17 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_18 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_18 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_18 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_18 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_19 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_19 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_19 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_19 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_20 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_20 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_20 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_20 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_21 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_21 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_21 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_21 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_22 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_22 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_22 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_22 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_23 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_23 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_23 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_23 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_24 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_24 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_24 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_24 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_25 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_25 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_25 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_25 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_26 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_26 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_26 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_26 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_27 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_27 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_27 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_27 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_28 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_28 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_28 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_28 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_29 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_29 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_29 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_29 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_30 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_30 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_30 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_30 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_31 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_31 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_31 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_31 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_32 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_32 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_32 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_32 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_33 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_33 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_33 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_33 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_34 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_34 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_34 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_34 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_35 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_35 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_35 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_35 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_36 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_36 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_36 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_36 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_37 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_37 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_37 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_37 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_38 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_38 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_38 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_38 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_39 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_39 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_39 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_39 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_40 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_40 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_40 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_40 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_41 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_41 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_41 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_41 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_42 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_42 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_42 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_42 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_43 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_43 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_43 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_43 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_44 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_44 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_44 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_44 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_45 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_45 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_45 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_45 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_46 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_46 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_46 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_46 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_47 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_47 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_47 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_47 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_48 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_48 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_48 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_48 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_49 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_49 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_49 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_49 VARCHAR(80) DEFAULT NULL,
Other_Provider_Identifier_50 VARCHAR(20) DEFAULT NULL,
Other_Provider_Identifier_Type_Code_50 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_State_50 VARCHAR(2) DEFAULT NULL,
Other_Provider_Identifier_Issuer_50 VARCHAR(80) DEFAULT NULL,
Is_Sole_Proprietor VARCHAR(1) DEFAULT NULL,
Is_Organization_Subpart VARCHAR(1) DEFAULT NULL,
Parent_Organization_LBN VARCHAR(70) DEFAULT NULL,
Parent_Organization_TIN VARCHAR(9) DEFAULT NULL,
Authorized_Official_Name_Prefix_Text VARCHAR(5) DEFAULT NULL, 
Authorized_Official_Name_Suffix_Text VARCHAR(5) DEFAULT NULL, 
Authorized_Official_Credential_Text VARCHAR(20) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_1 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_2 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_3 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_4 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_5 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_6 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_7 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_8 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_9 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_10 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_11 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_12 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_13 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_14 VARCHAR(70) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Group_15 VARCHAR(70)
);

/* load the data into the table:4,127,378 caveat: this is a loooong process 2:05h */
LOAD DATA LOCAL INFILE 'C:\\npidata.csv' INTO TABLE npidata1 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

/* keep WA providers only:103,848 */
CREATE INDEX state ON npidata1 (Provider_Business_Practice_Location_Address_State_Name);
DELETE FROM npidata1

WHERE (Provider_Business_Practice_Location_Address_State_Name != 'WA');


/* delete non physical providers: 85,737 */
DELETE FROM npidata1
WHERE (Provider_Organization_Name_Legal_Business_Name != ' ');


/* compact the table */
OPTIMIZE TABLE npidata1;

/* Health Care Provider Taxonomy Code Set CSV */
/* http://nucc.org/index.php?option=com_content&view=article&id=107&Itemid=132 */
/* file nucc_taxonomy_131.csv */
/* 
Note1: Delete the first line of the file (header)
Note2: Deleted fields Definition and Notes before importing (I had problems loading)
Note3: Cleaned " and embedded commas */
*/

/* create table to dump the csv file */
CREATE TABLE speciality (
  Code varchar(10) NOT NULL,
  Type varchar(100) DEFAULT NULL,
  Classification varchar(100) DEFAULT NULL,
  Specialization varchar(100) DEFAULT NULL
);

/* load the data into the table:829 */
LOAD DATA LOCAL INFILE 'C:\\nucc.csv' INTO TABLE speciality FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

/* create indexes to speed up operations */
CREATE INDEX Code ON speciality (Code);

/* final data for the app */
CREATE TABLE npidata2 (
NPI VARCHAR(10) NOT NULL, PRIMARY KEY(NPI),
Provider_Last_Name_Legal_Name VARCHAR(35) DEFAULT NULL,
Provider_First_Name VARCHAR(20) DEFAULT NULL,
Provider_Middle_Name VARCHAR(20) DEFAULT NULL,
Provider_Credential_Text VARCHAR(20) DEFAULT NULL,
Provider_Full_Name VARCHAR(100) DEFAULT NULL,
Provider_First_Line_Business_Practice_Location_Address VARCHAR(55) DEFAULT NULL,
Provider_Second_Line_Business_Practice_Location_Address VARCHAR(55) DEFAULT NULL,
Provider_Full_Street VARCHAR(110) DEFAULT NULL,
Provider_Business_Practice_Location_Address_City_Name VARCHAR(40) DEFAULT NULL,
Provider_Business_Practice_Location_Address_State_Name VARCHAR(40) DEFAULT NULL,
Provider_Business_Practice_Location_Address_Postal_Code VARCHAR(20) DEFAULT NULL,
Provider_Full_City VARCHAR(100) DEFAULT NULL,
Provider_Short_Postal_Code VARCHAR(5) DEFAULT NULL,
Provider_Business_Practice_Location_Address_Telephone_Number VARCHAR(20) DEFAULT NULL,
Provider_Gender_Code VARCHAR(1) DEFAULT NULL,
Healthcare_Provider_Taxonomy_Code_1 VARCHAR(10) DEFAULT NULL,
Classification varchar(100) DEFAULT NULL,
Specialization varchar(100) DEFAULT NULL
);

/* fill with data */
INSERT INTO npidata2
SELECT
npidata1.NPI,
npidata1.Provider_Last_Name_Legal_Name,
npidata1.Provider_First_Name,
npidata1.Provider_Middle_Name,
npidata1.Provider_Credential_Text,
CONCAT(
npidata1.Provider_Last_Name_Legal_Name,', ',
npidata1.Provider_First_Name,' ',
npidata1.Provider_Middle_Name,' ',
npidata1.Provider_Credential_Text) AS Provider_Full_Name,
npidata1.Provider_First_Line_Business_Practice_Location_Address,
npidata1.Provider_Second_Line_Business_Practice_Location_Address,
CONCAT(
npidata1.Provider_First_Line_Business_Practice_Location_Address,' ',
npidata1.Provider_Second_Line_Business_Practice_Location_Address) AS Provider_Full_Street,
npidata1.Provider_Business_Practice_Location_Address_City_Name,
npidata1.Provider_Business_Practice_Location_Address_State_Name,
npidata1.Provider_Business_Practice_Location_Address_Postal_Code,
CONCAT(
npidata1.Provider_Business_Practice_Location_Address_City_Name,', ',
npidata1.Provider_Business_Practice_Location_Address_State_Name,' ',
npidata1.Provider_Business_Practice_Location_Address_Postal_Code) AS Provider_Full_City,
SUBSTR(npidata1.Provider_Business_Practice_Location_Address_Postal_Code,1,5) AS Provider_Short_Postal_Code,
npidata1.Provider_Business_Practice_Location_Address_Telephone_Number,
npidata1.Provider_Gender_Code,
npidata1.Healthcare_Provider_Taxonomy_Code_1,
speciality.Classification,
speciality.Specialization
FROM npidata1 JOIN speciality WHERE (npidata1.Healthcare_Provider_Taxonomy_Code_1 = speciality.Code);

/* create indexes to speed up application */
CREATE INDEX Classification ON npidata2 (Classification);
CREATE INDEX Provider_Last_Name_Legal_Name ON npidata2 (Provider_Last_Name_Legal_Name);
CREATE INDEX Provider_Short_Postal_Code ON npidata2 (Provider_Short_Postal_Code);
CREATE INDEX Provider_Gender_Code ON npidata2 (Provider_Gender_Code);

/* create a table to save the transactions */
CREATE TABLE transactions(
   id INT NOT NULL AUTO_INCREMENT = 1001000 PRIMARY KEY,
   ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   NPI1 VARCHAR(10) DEFAULT NULL, 
   NPI2 VARCHAR(10) DEFAULT NULL,
   NPI3 VARCHAR(10) DEFAULT NULL
);
ALTER TABLE transactions AUTO_INCREMENT = 1001000;

/* create a small table to have the classification taxonomy */
CREATE TABLE taxonomy(
  Classification varchar(100) PRIMARY KEY
);

/*and fill with data:235 */
INSERT INTO taxonomy
SELECT DISTINCT Classification FROM speciality;

/* And that's all */