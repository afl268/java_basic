package constructor;

public class Car { 
	// 자동차의 상태(속성)를 나타내는 변수들
	public int gas; // 연료량
	public int speed; // 속도
	public String owner; // 차주
	
	// 생성자 정의
	// 생성자는 리턴타입을 가지지 않고, 클래스명을 그대로 메서드명으로 쓴다.
	// new 키워드로 생성할 때 딱 한 번만 실행된다.
	
	public Car(String o) {
		gas = 100;
		speed = 0;
		owner = o;
	}
	
	// 현재 연료량, 속도, 차주를 조회하여 콘솔창에 찍어 줄 수 있는
	// 메서드를 어제 코드를 참조해 작성해주세요. (계기판 보기)
	
	public void getInfo() {
		System.out.println("연료량 : " + gas + 
				 			", 속도 : " + speed +
				 			", 차주 : " + owner );
	}
	// 자동차의 운전기능을 추가해보겠습니다.
	// 운전기능은 accelSpeed() 이며
	// 이 기능은 실행되면 연료를 2 차감하고
	// 속도를 10 증가시킵니다.
	
	public void accelSpeed() {
		gas -= 2;
		speed += 10;
	}
	
	// 자동차의 감속기능
	// 기능 실행 시 속도 10 차감
	public void breakSpeed() {
		speed -= 10;
	}
	public void ZeroSpeed() {
		speed = 0;
	}
	
	public void reFuel() {
		gas += 50;
	}
	// 주유기능 추가
	// reFuel() 이며
	// 이 기능은 실행되면 연료를 50 채워준다
}