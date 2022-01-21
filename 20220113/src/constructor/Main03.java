package constructor;

public class Main03 {

	public static void main(String[] args) {
		Webtoon w1 = new Webtoon("12","34");
		w1.uploadWebtoon();
		w1.uploadWebtoon();
		w1.getInfo();
		w1.uploadWebtoon();
		w1.completeWebtoon();
		w1.getInfo();
		
		Webtoon w2 = new Webtoon(null, null);
		w2.name = "제목2";
		w2.painter = "작가2";
		w2.uploadWebtoon();
		w2.uploadWebtoon();
		w2.uploadWebtoon();
		w2.uploadWebtoon();
		w2.completeWebtoon();
		w2.getInfo();
		
		

	}

}
