-- Write the SQL Query to know how many countries have Spanish as their official language. Good luck!

SELECT `countrylanguage`.`Language`,count(`countrylanguage`.`Language`) AS `#count`
FROM `country`
INNER JOIN `countrylanguage`
ON `country`.`Code`=`countrylanguage`.`CountryCode`
WHERE `countrylanguage`.`Language` = 'Spanish'
GROUP BY `countrylanguage`.`Language`
