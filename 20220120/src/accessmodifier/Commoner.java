package accessmodifier;

public class Commoner {
	// private 요소는 자식 쪽에서도 조회나 수정이 불가능하다.
	// 보안성이 제일 뛰어나기 때문에 private를 써서 변수를 처리하는 경우가 많은데
	// 이 경우 setter, getter 메서드를 사용해 보조한다.
	
	private int hp;
	private int mp;
	private int lv;
	private int exp;
	private String name;
	
	public Commoner(String name) {
		hp = 20;
		mp = 10;
		lv = 1;
		exp = 0;
		this.name = name;
	}

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
