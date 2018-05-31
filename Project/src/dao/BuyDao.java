package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import base.DBManager;
import beans.BuyDataBeans;
import beans.DeliveryDataBeans;

public class BuyDao {

	public void newbuy (String userId, int totalPrice, String deliveryMethodId) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String insert = "INSERT INTO buy(user_id,total_price,delivery_id) VALUES(?,?,?)";


            PreparedStatement pStmt = conn.prepareStatement(insert);
            pStmt.setString(1, userId);
            pStmt.setInt(2, totalPrice);
            pStmt.setString(3, deliveryMethodId);



            pStmt.executeUpdate();
            conn.close();



        } catch (SQLException e) {
            e.printStackTrace();

        } finally {

        	 if (conn != null) {
                 try {
                     conn.close();
                 } catch (SQLException e) {
                 }
                 conn = null;
             }
         }
     }

	public String BuyId() {
        Connection conn = null;
        try {
        	PreparedStatement st = null;
        		conn = DBManager.getConnection();

            String sql = "SELECT MAX(id) FROM buy";

             st = conn.prepareStatement(sql);

            ResultSet rs = st.executeQuery();

            if (!rs.next()) {
                return null;
            }

            String id = rs.getString("MAX(id)");







            return id;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
	}

	public void newbuyItem (String buyId, String itemId) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String insert = "INSERT INTO buy_detail(buy_id,item_id) VALUES(?,?)";


            PreparedStatement pStmt = conn.prepareStatement(insert);
            pStmt.setString(1, buyId);
            pStmt.setString(2, itemId);




            pStmt.executeUpdate();
            conn.close();



        } catch (SQLException e) {
            e.printStackTrace();

        } finally {

        	 if (conn != null) {
                 try {
                     conn.close();
                 } catch (SQLException e) {
                 }
                 conn = null;
             }
         }
     }

	public BuyDataBeans buyData(String buyid) {
        Connection conn = null;
        try {

    		conn = DBManager.getConnection();

        String sql = "SELECT * FROM buy WHERE id = ?";

        PreparedStatement pStmt = conn.prepareStatement(sql);
        pStmt.setString(1, buyid);
        ResultSet rs = pStmt.executeQuery();

        if (!rs.next()) {
            return null;
        }
        String id = rs.getString("id");
        String userId = rs.getString("user_id");
        String totalPrice = rs.getString("total_price");
        String deliveryId = rs.getString("delivery_id");
        Date cdt = rs.getTimestamp("create_date");

        String buyDate = new SimpleDateFormat("yyyy年MM月dd日HH時mm分").format(cdt);



        BuyDataBeans buydata = new BuyDataBeans(id, userId, totalPrice, deliveryId, buyDate);

        return buydata;

    } catch (SQLException e) {
        e.printStackTrace();
        return null;
    } finally {

        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }
    }
	}
	public DeliveryDataBeans deliveryName(String deliveryId) {
        Connection conn = null;
        try {

    		conn = DBManager.getConnection();

        String sql = "SELECT * FROM delivery WHERE id = ?";

        PreparedStatement pStmt = conn.prepareStatement(sql);
        pStmt.setString(1, deliveryId);
        ResultSet rs = pStmt.executeQuery();

        if (!rs.next()) {
            return null;
        }
        String id = rs.getString("id");
        String name = rs.getString("name");
        String price = rs.getString("price");




        DeliveryDataBeans deliverydata = new DeliveryDataBeans(id, name, price);

        return deliverydata;

    } catch (SQLException e) {
        e.printStackTrace();
        return null;
    } finally {

        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
                return null;
            }
        }
    }
	}

	public List<BuyDataBeans> BuyAll(String userId) {
        Connection conn = null;
        List<BuyDataBeans> buyList = new ArrayList<BuyDataBeans>();

        try {
        	conn = DBManager.getConnection();

            String sql = "SELECT * FROM buy WHERE user_id = ?";

            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, userId);
            ResultSet rs = pStmt.executeQuery();


            while (rs.next()) {
                String id = rs.getString("id");
                String userid = rs.getString("user_id");
                String totalPrice = rs.getString("total_price");
                String deliveryId = rs.getString("delivery_id");
                Date bdt = rs.getTimestamp("create_date");

                String buyDate = new SimpleDateFormat("yyyy年MM月dd日HH時mm分").format(bdt);






                BuyDataBeans buy = new BuyDataBeans(id, userid, totalPrice,  deliveryId, buyDate);

                buyList.add(buy);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return buyList;
    }

}
