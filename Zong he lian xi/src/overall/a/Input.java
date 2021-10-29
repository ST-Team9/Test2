package overall.a;
import java.util.Scanner;

public class Input {

public static int nexInt(int minRange,int maxRange) {
	Scanner s=new
			Scanner(System.in);
	while(true) {
		try {

			int num=s.nextInt();
			if(num<minRange ||num>maxRange);{
				System.out.println(minRange+"から"+maxRange+"の間の整数を入力してください");
				}
		return num;
		}
		catch(Exception e) {
			System.out.println("[正しい整数を入力してください]");
		String sss=s.next();





		}




		}
	}


}




