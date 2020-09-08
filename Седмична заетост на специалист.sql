SELECT instructor.EGN, instructor.FNAME, instructor.LNAME
, IF(SUM(IF(MONDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS MONDAY
, IF(SUM(IF(TUESDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS TUESDAY
, IF(SUM(IF(WEDNESDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS WEDNESDAY
, IF(SUM(IF(THURSDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS THURSDAY
, IF(SUM(IF(FRIDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS FRIDAY
, IF(SUM(IF(SATURDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS SATURDAY
, IF(SUM(IF(SUNDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS SUNDAY
FROM instructor, visitor
INNER JOIN registration
WHERE instructor.EGN = visitor.INSTRUCTOR_EGN
AND registration.NUMBER = visitor.REGISTRAТION_NUMBER
AND instructor.FNAME = 'Пешо';