-- Write the SQL Query to know how many countries speak each official language. Good luck!


SELECT `country`.`Name`,count(`countrylanguage`.`Language`) AS `#language_official`
FROM `country`
INNER JOIN `countrylanguage`
ON `country`.`Code`=`countrylanguage`.`CountryCode`
WHERE `countrylanguage`.`isOfficial` = 'T'
GROUP BY `country`.`Name`
