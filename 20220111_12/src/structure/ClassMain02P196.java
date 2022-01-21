package structure;

public class ClassMain02P196 {
	
	public static void main(String[] args) {
		
		// 차 2대 생성
		Car car1 = new Car();
		car1.model = "카니발";
		car1.price = 2000;
		car1.owner = "김철수";
		
		Car car2 = new Car();
		car2.model = "아반테";
		car2.price = 3000;
		car2.owner = "김수한";
		
		// 콘솔에 정보 조회하기
		car1.getInfo();
		System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
		car2.getInfo();
	}
}
