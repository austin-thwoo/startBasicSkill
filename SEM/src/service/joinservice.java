package service;

import static dao.inputDAO.*;
import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.inputDAO;
import data.UserInfoBean;

public class joinservice {
	inputDAO dao = getInstance();
	Connection con = getConnection();

	public int memberjoin(UserInfoBean uib, int serviceCode) {
		switch (serviceCode) {
		case 1:
			dao.setConnection(con);
			int result1 = dao.Join(uib);
			if (result1>0) {
				commit(con);
				close(con);

			}else {rollback(con);}
			close(con);
			return result1;
		case 2:
			dao.setConnection(con);
			int result2 = dao.LogIn(uib);

			if (result2>0) {
				commit(con);
				close(con);

			}else {rollback(con);}
			close(con);
			return result2;

		default:
			return 0;
			
		case 3:
			dao.setConnection(con);
			 dao.overlap(uib);
			int result=0;
			close(con);
			return result;	
			
		}
		
	}

}