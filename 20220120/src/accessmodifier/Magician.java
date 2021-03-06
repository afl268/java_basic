package accessmodifier;

public class Magician extends Commoner{
	
	// 생성자를 만들어주세요
	// magician측에서 설정하는 변수는 추가로 없지만
	// 생성자는 상속되지 않음으로 부모쪽 생성자를
	// 처리할 수 있도록 만들기
	
	public Magician (String name) {
		super(name);
	}
	
	public void hunt() {
		System.out.println("마법사가 사냥을 시작한다.");
		// hp -= 2; private 요소는 자식 쪽에서도 컨트롤 불가능
		// public인 setter의 일종인 setHp()를 대신 활용한다.
		// setHp(5)인 경우, 기존의 값 대신 hp변수에 5로 교체해달라는 요청이다.
		// 현재 원하는 것은 현재 hp값에서 2가 깎인 값이 새로운 hp로 저장되는 것이다.
		// setter와 getter(setHp(), getHp())를 적절히 활용해
		// 전투 할 때 마다 체력이 2씩 깎이도록 로직을 작성.
		
		setHp(getHp()-2);
		// 경험치도 마찬가지로
		// exp += 10; 을 직접 실행할 수 없으므로
		// setExp()를 활용한다.
		// 현재 원하는 것은, 현 exp값마다 사냥 시마다 10씩 경험치가 증가하는 것이다.
		setExp(getExp()+10);
	}
	
	public void getInfo() {
		// 심지어 private는 수정만 안 되는게 아니라 조회도 불가능하다.
		// 따라서 getter를 이용해 상태를 조회할 수 있게 해주는거야.
		System.out.println("현재 마나 : "+ getMp());
		System.out.println("현재 HP : " + getHp());
		System.out.println("현재 레벨 : " + getLv());
		System.out.println("현재 경험치 : " + getExp());
		System.out.println("이름 : " + getName());
	}
	
	// fireball 기능 추가
	// 마나 3 줄고 경험치 20 증가
	public void fireball() {
		setMp(getMp() -3);
		setExp(getExp() + 20);
	}
}
