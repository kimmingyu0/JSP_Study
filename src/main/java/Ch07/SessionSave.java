package Ch07;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

public class SessionSave {
    //로그인 처리시 Userid:Session 주소를 저장하기 위한 컬렉션
    public Map<String, HttpSession> slist = new HashMap();

    //로그인 처리시 해당 계정 Id:Session 갹채주소를 저장하기 위한 함수
    public void AddSession(String id,HttpSession session){
        slist.put(id,session);
        System.out.println("ID : "+id+" Session : "+session);
    }

    //총 세션정보를 전달하기 위한 함수
    public Map<String, HttpSession> GetSession(){
        return slist;
    }
}
