package superkeyword;

public class Airplane {
	// 비행기는 속도를 가진다.
	// 생성자는 속도를 입력받아 저장한다.
	
	protected int speed;
	
	public Airplane(int speed) {
		this.speed = speed;
	}
	// fly() 메서드를 정의하는데 속도가 500씩 붙는거야
	// 단, 일반비행기는 속도가 900초과 못 하는거야
	public void fly() {
		
		if ((this.speed + 500 ) > 900) {
			this.speed = 900;
		} else {
			this.speed += 500;
		}
		System.out.println("현재 비행기 시속 " + this.speed + "km/h로 비행 중.");
	}
	// breakSpeed() 메서드를 수행하면 속도가 100씩 감속하는거야
	// 단, 브레이크 구동의 최저 속도는 0인거야
	
	public void breakSpeed() {
		if ((this.speed - 100) <= 0) {
			this.speed = 0;
		} else {
			this.speed -= 100;
		} System.out.println("감속으로 현재 비행기 시속 " + this.speed + "km/h로 비행 중.");
	}
	}	
