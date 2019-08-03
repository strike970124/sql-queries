-- Write the SQL Query to get the official language of each country. Good luck!


SELECT `country`.`Name`,`countrylanguage`.`Language`, `countrylanguage`.`isOfficial`
FROM `country`
INNER JOIN `countrylanguage`
ON `country`.`Code`=`countrylanguage`.`CountryCode`
WHERE `countrylanguage`.`isOfficial` = 'T'