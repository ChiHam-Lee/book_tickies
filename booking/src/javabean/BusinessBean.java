package javabean;

public class BusinessBean {
	public boolean valid(String username,String password){//登陆验证方法
	 boolean isValid=false;
	 DBAccessBean db=new DBAccessBean();
	 if(db.createConn()){
		 String sql="select* form usertable where username='"+username+"'and password='"+password+"'";
		 db.query(sql);
		 if(db.next()){isValid=true;}
		 db.closeRs();db.closeStmt();db.closeConn();
	 }
	 return isValid;
 }
    public boolean isExist(String username){//检查用户名是否存在
    	boolean isExist=false;
    	DBAccessBean db = new DBAccessBean();
    	if(db.createConn()){
    		String sql="sqlect*from usertable where username='"+username+"'";
    		db.query(sql);
    		if(db.next()){
    			isExist=true;
    	}
    		db.closeRs();db.closeStmt();db.closeConn();
    }
    	return isExist;
}
     public void add(String username,String password,String email){//增加一个用户
    	 DBAccessBean db=new DBAccessBean();
    	 if(db.createConn()){
    		 String sql ="insert into usertable(username,password,email)values('"+username+"','"+password+"','"+email+"')";
    		 db.update(sql);db.closeStmt();db.closeConn();
    	 }
    }
}