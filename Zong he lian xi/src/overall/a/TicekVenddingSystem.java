package overall.a;

public class TicekVenddingSystem {
	public static void main(String[] args) {
		while(true) {
	    int a=select();
		int b=deposit(a);
	    printChange(b);}
	}
	public static  Station[] getStationList()  {
		Station[] stationList=new Station[3];
		Station station0=new Station("秋葉原駅",133);
		Station station1=new Station("山梨駅",4128);
		Station station2=new Station("長野駅",7990);
		stationList[0]=station0;
		stationList[1]=station1;
		stationList[2]=station2;
		

//private
		return stationList;
}
	                    


		// 駅名と運賃を管理するクラス
		//秋葉原駅　133　　山梨駅4128　長野駅　7990  終了する場合0円




		public static int deposit (int fare) {
		  System.out.println("紙幣・硬貨を投入してください");
		  
			int yen=0,num=0;
			System.out.println("投入金額"+yen);
			do {
				
			
				System.out.println("投入する紙幣・硬貨を選択してください");
                 

			    System.out.println("あと"+"【"+(fare-yen)+"円】です");
			    Money.showMenu();
			    num=Input.nexInt(1, 7);
			    yen=yen+ Money.kinds[num-1];
			    System.out.println("現在の投入金額"+yen+"円");
			   
			   }while(yen<fare);
			return yen-fare;	
 	}  
		public static int select() {
			System.out.println("【ウチダ電鉄　発券機システム】");
			Station stationList[]=getStationList();
			System.out.println("「駅の選択」");
			System.out.println("駅と運賃");
			for(int i = 0;i<3;i++) {System.out.println((i+1)+":"+stationList[i]);
			}
			System.out.println("行先を入力してください(終了する場合には0を入力)");
			int num=Input.nexInt(0,stationList.length);
			if(num==0) {
			
			System.out.println("システムを終了します");
			System.exit(0);
			
			}
			Station h=stationList[num-1];
			System.out.println("行先は"+h.getName()+"で料金は"+h.getFare()+"円です");
			
			
			
			return h.getFare();
		
			
		}
		
		private static int printChange(int change) {
			System.out.println("購入完了しました"+"お釣りは"+change+"円です");
			return change;
			

		}
		
		

}


		

		














