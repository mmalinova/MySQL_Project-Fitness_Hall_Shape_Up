SELECT appliannce.NAME, appliannce.MODEL, visitor.ID, visitor.FNAME, visitor.LNAME
, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
, visitor_use_appliannce.FROM, visitor_use_appliannce.TO
FROM appliannce, visitor
INNER JOIN visitor_use_appliannce
WHERE appliannce.ID = visitor_use_appliannce.APPLIANNCE_ID
AND visitor.ID = visitor_use_appliannce.VISITOR_ID
AND HALL_ID = 1
AND WEEK_NUM = 1
ORDER BY appliannce.NAME, appliannce.MODEL;

(SELECT appliannce.NAME, appliannce.MODEL, visitor.ID, visitor.FNAME, visitor.LNAME
, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
, visitor_use_appliannce.FROM, visitor_use_appliannce.TO
FROM appliannce, visitor
INNER JOIN visitor_use_appliannce
WHERE appliannce.ID = visitor_use_appliannce.APPLIANNCE_ID
AND visitor.ID = visitor_use_appliannce.VISITOR_ID
AND HALL_ID = 1
AND visitor_use_appliannce.FROM  = '2020-08-03' AND visitor_use_appliannce.TO = '2020-08-09'
ORDER BY appliannce.NAME, appliannce.MODEL)
UNION
(SELECT appliannce.NAME, appliannce.MODEL, visitor.ID, visitor.FNAME, visitor.LNAME
, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
, visitor_use_appliannce.FROM, visitor_use_appliannce.TO
FROM appliannce, visitor
INNER JOIN visitor_use_appliannce
WHERE appliannce.ID = visitor_use_appliannce.APPLIANNCE_ID
AND visitor.ID = visitor_use_appliannce.VISITOR_ID
AND HALL_ID = 1
AND visitor_use_appliannce.FROM  = '2020-08-10' AND visitor_use_appliannce.TO = '2020-08-16'
ORDER BY appliannce.NAME, appliannce.MODEL);