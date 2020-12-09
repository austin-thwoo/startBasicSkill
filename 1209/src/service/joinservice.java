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
		int result = 0;
		switch (serviceCode) {
		case 1:
			dao.setConnection(con);
			result = dao.Join(uib);
			if (result>0) {
				commit(con);
				close(con);

			}else {rollback(con);}
			close(con);
			return result;
		case 2:
			dao.setConnection(con);
			result = dao.LogIn(uib);

			if (result>0) {
				commit(con);
				close(con);

			}else {rollback(con);}
			close(con);
			return result;
		case 3:
			dao.setConnection(con);
			result = dao.Modify(uib);

			if (result>0) {
				commit(con);
				close(con);

			}else {rollback(con);}
			close(con);
			return result;
		case 4:
			dao.setConnection(con);
			result = dao.Delete(uib);

			if (result>0) {
				commit(con);
				close(con);

			}else {rollback(con);}
			close(con);
			return result;

		case 5:
			dao.setConnection(con);
			 dao.overlap(uib);
			int result5=0;
			close(con);
			return result5;		
			
			
		default:
			return 0;
		}
		
	}

}