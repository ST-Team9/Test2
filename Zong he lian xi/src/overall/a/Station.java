package overall.a;
//駅名と運賃を管理するクラス
public class Station {


	public String name;
	public int fare;
	public Station() {}
    public Station(String name,int fare) {
    		this.name=name;
    		this.fare=fare;
    		}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	@Override
	public String toString() {
		//return "Sation [name=" + name + ", fare=" + fare + "]";
		return name+"まで"+'\t'+fare+"円";


	}

   
    }







