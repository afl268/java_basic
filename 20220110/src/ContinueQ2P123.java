
public class ContinueQ2P123 {

	public static void main(String[] args) {
		// // 다음은 학생들의 과목별 성적입니다.
		// math = 96, 23, 52, 82, 72, 31, 58
		// eng = 62, 42, 68, 31, 80, 77, 45
		// com = 10, 28, 39, 74, 65, 90, 98
		// 수학(math) 평균점수를 내주시되, 합격자 평균만 내주세요.
		// 합격점수는 60점 이상입니다.
		
		int [] math = {96, 23, 52, 82, 72, 31, 58};
		int [] com = {10, 28, 39, 74, 65, 90, 98};
		int [] eng = {62, 42, 68, 31, 80, 77, 45};
		int mtotal = 0;
		int mcount = 0;
		int etotal = 0;
		int ecount = 0;
		int ctotal = 0;
		int ccount = 0;
		
		for (int score : math) {
			if (score < 60) {
				continue;
			} else { 
				mcount++;
				mtotal += score;
			}}
		for (int escore : eng) {
				if (escore < 60) {
					continue;
				} else { 
					ecount++;
					etotal += escore;
				}}
		for (int cscore : com) {
				if (cscore < 60) {
						continue;
				} else { 
						ccount++;
						ctotal += cscore;
					}
			
		} System.out.println("수학합격자 평균 : "+mtotal/mcount);
		 System.out.println("영어합격자 평균 : "+etotal/ecount);
		 System.out.println("컴퓨터합격자 평균 : "+ctotal/ccount);
			
	}
		
		}
