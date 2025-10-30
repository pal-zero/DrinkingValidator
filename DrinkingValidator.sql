-- drinking validator
SELECT name, current_utc_offset,
 FORMAT(cast(switchoffset(GETUTCDATE(), current_utc_offset) AS datetime), 'HH') AS CurrentHour
FROM sys.time_zone_info tz
WHERE FORMAT(cast(switchoffset(GETUTCDATE(), current_utc_offset) AS datetime), 'HH') >= 17;
