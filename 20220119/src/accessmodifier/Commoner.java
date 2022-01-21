package accessmodifier;

public class Commoner {
	// private 요소는 자식 쪽에서도 조회나 수정이 불가능하다.
	// 보안성이 제일 뛰어나기 때문에 private를 쓰는게 권장되는데
	// 이 경우 setter, getter 메서드를 사용해 보조한다.
	
	private int hp;
	private int mp;
	private int lv;
	private int exp;
	private String name;
	
	// 생성자를 이용해 이름은 사용자가 입력하도록 해주시고
	// hp는 20, mp는 10, lv은 1, exp는 0을 기본값으로 넣어주는거야
	
	public Commoner(String name) {
		hp = 20;
		mp = 10;
		lv = 1;
		exp = 0;
		this.name = name;
	}
	// setter/getter를 만드는 방법은
	// 마우스 우클릭 -> source -> generate getter/setters를 선택해 자동으로
	// 생성된다

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public int getMp() {
		return mp;
	}

	public void setMp(int mp) {
		this.mp = mp;
	}

	public int getLv() {
		return lv;
	}

	public void setLv(int lv) {
		this.lv = lv;
	}

	public int getExp() {
		return exp;
	}

	public void setExp(int exp) {
		this.exp = exp;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
