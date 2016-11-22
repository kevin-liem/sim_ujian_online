package utility;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;

public class TimeInfo {
	public static String getCurrentTime() {
		LocalTime localTime = LocalTime.now();
		return localTime.toString();
	}
	
	public static String getCurrentTimeWithTimeZone() {
		ZoneId zoneId = ZoneId.of("America/Los_Angeles");
		LocalTime localTime = LocalTime.now(zoneId);
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
		String formattedTime = localTime.format(formatter);
		return formattedTime;
	}
	
	public static String getCurrentTimeWithOffset(){
        ZoneOffset zoneOffset = ZoneOffset.of("+10:00");
        ZoneId zoneId=ZoneId.ofOffset("UTC", zoneOffset);
//        LocalTime offsetTime = LocalTime.now(zoneId);
        LocalDateTime offsetTime = LocalDateTime.now(zoneId);
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm a");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("YYYY/MM/dd hh:mm:ss");
        String formattedTime=offsetTime.format(formatter);
        return formattedTime;
    }
}