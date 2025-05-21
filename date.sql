-- postgres timestemp
-- ** SHOW Timezone
-- SELECT now();// now current time

-- TIMESTAMP without time zone || TIMESTAMP with time zone
CREATE Table timeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timez VALUES('2025-01-12 10:56:56','2025-01-12 10:57:57' );

-- SELECT * from timez;

-- SELECT now(); // for time stamp

-- SELECT CURRENT_DATE; // for date

-- SELECT now()::time; // for geting time and date from now

-- SELECT to_char(now(),'yyyy/mm/dd'); //for SHOWinng date char

-- SELECT to_char(now(), 'Month' );// select month casewise

-- ** interval on timestamp
-- SELECT CURRENT_DATE - INTERVAL '1 year 2 month';// interval is used for to go past date and future date

-- SELECT age(CURRENT_DATE, '2001-12-20');// age calculat]ion
-- SELECT *, age(CURRENT_DATE, dob) FROM students;// date calculation for all data

-- SELECT extract(Month FROM '2025-01-25'::date);// for extract month/date/year form data

-- SELECT 'Y'::BOOLEAN; // 1,y is true and * is false