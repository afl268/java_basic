package testbeanz;

public class LoginBean {
	
	private String userid;
	private String passwd;
	
	final String _userid="myuser";
	final String _passwd="1234";
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
		public String getUserid() {
			return userid;
		}
		
		public void setUserid(String userid) {
			this.userid = userid;
		}
		
		public boolean checkUser() {
			if(userid.equals(_userid)&&passwd.equals(_passwd)) {
				return true;
			}
			else
				return false;
			
		}
		
	}
