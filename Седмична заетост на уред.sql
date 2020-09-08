SELECT appliannce.NAME, appliannce.MODEL
, IF(SUM(IF(MONDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS MONDAY
, IF(SUM(IF(TUESDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS TUESDAY
, IF(SUM(IF(WEDNESDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS WEDNESDAY
, IF(SUM(IF(THURSDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS THURSDAY
, IF(SUM(IF(FRIDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS FRIDAY
, IF(SUM(IF(SATURDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS SATURDAY
, IF(SUM(IF(SUNDAY = 'Y', 1, 0)) > 0, 'Y', 'N') AS SUNDAY
FROM appliannce
INNER JOIN visitor_use_appliannce
WHERE appliannce.ID = visitor_use_appliannce.APPLIANNCE_ID
AND appliannce.NAME = 'БЯГАЩА ПЪТЕКА С 20 ИНЧА С ТЪЧ ДИСПЛЕЙ'
AND HALL_ID = 1
AND WEEK_NUM = 1;