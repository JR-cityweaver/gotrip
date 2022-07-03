package gouTrip;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import junit.framework.TestCase;

public class Demo extends TestCase {

	public void test(){	
		Date b=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat("yyyyMMddHHmmss");
		String dateString=formatter.format(b);
		Random random=new Random();
		int rand=random.nextInt(100000);
		
	}
}
