import org.json.JSONException; 
import org.json.JSONObject; 

public class MenuSetting {

	public static String appId = "wxc27ecb8986d96e3c";
    public static String appSecret= "22ccbb32a2ac6b7bc25a90f3c4ffe1b4"; 
    
	public static void main(String[] args) throws JSONException {
		add();
		//delete();
	}

    public static String getAccessToken() throws JSONException{
        NetWorkHelper netHelper = new NetWorkHelper();
        String Url = String.format("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s",appId,appSecret);
        String result = netHelper.getHttpsResponse(Url,"");
        System.out.println(result);
        //JSONObject json = JSONObject.fromObject(result);
        JSONObject json = new JSONObject(result);
        return  json.getString("access_token");
    }
    
    public static void delete() throws JSONException{
    		String s = getAccessToken();
        NetWorkHelper netHelper = new NetWorkHelper();
        String Url = String.format("https://api.weixin.qq.com/cgi-bin/menu/delete?access_token=%s", s);
        String result = netHelper.getHttpsResponse(Url,"");
        System.out.println(result);
    }
    
    public static void add() throws JSONException{
    		String s = getAccessToken();
        NetWorkHelper netHelper = new NetWorkHelper();
        String json = "{"
        	+ "\"button\":["
        	+ "{"
        	+ "\"name\":\"电影票\","
        	+ "\"sub_button\":["
        	+ "{"	
            + "\"type\":\"view\","
            + "\"name\":\"在线抢票\","
            + "\"url\":\"http://yq93d2.natappfree.cc/test/001.jsp\""
            + "}]"
        	+ "},"
        	+ "{"
        	+ "\"name\":\"我的影票\","
        	+ "\"sub_button\":["
        	+ "{"	
            + "\"type\":\"view\","
            + "\"name\":\"当前影票\","
            + "\"url\":\"http://yq93d2.natappfree.cc/test/001.jsp\""
         	+ "},"
         	 + "{"
             + "\"type\":\"view\","
             + "\"name\":\"历史记录\","
             + "\"url\":\"http://aq3cez.natappfree.cc/test/001.jsp\""
          	+ "},"
         	+ "{"
            + "\"type\":\"view\","
            + "\"name\":\"设置\","
            + "\"url\":\"http://aq3cez.natappfree.cc/001.jsp\""
         	+ "}]"
        	+ "},"
        	+ "{"
        	+ "\"name\":\"个人中心\","
        	+ "\"sub_button\":["
        	+ "{"	
            + "\"type\":\"view\","
            + "\"name\":\"关于我\","
            + "\"url\":\"http://www.hnust.cn/\""
            + "},"
         	+ "{"
            + "\"type\":\"view\","
            + "\"name\":\"联系我\","
            + "\"url\":\"http://qeyfku.natappfree.cc/test/Aboutme.jsp\""
         	+ "}]"
        	+ "}]"
        	+ "}";
        System.out.println(json);
         
        String Url = String.format("https://api.weixin.qq.com/cgi-bin/menu/create?access_token=%s", s);      
        String result = netHelper.getHttpsResponsePostBody(Url, "POST", json);
        System.out.println(result);
    }
    
}




