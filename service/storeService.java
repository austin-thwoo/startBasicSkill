package service;

import static dao.inputDAO.getInstance;
import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.inputDAO;
import data.GoodsInfoBean;
import data.UserInfoBean;

public class storeService {

	public ArrayList<GoodsInfoBean> getGoodsList(UserInfoBean uib) {
		inputDAO dao = getInstance();
		Connection con = getConnection();
		dao.setConnection(con);
		ArrayList<GoodsInfoBean> golist = 
				dao.getGoList(uib);
		close(con);
		return golist;
	}

}
