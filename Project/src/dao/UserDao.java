package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import base.DBManager;
import beans.ItemDataBeans;
import beans.UserDataBeans;


public class UserDao {

	public UserDataBeans UserData(String loginId) {
        Connection conn = null;
        try {

        		conn = DBManager.getConnection();

            String sql = "SELECT * FROM user WHERE id = ?";

            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, loginId);
            ResultSet rs = pStmt.executeQuery();

            if (!rs.next()) {
                return null;
            }
            int id = rs.getInt("id");
            String loginIdData = rs.getString("login_id");
            String nameData = rs.getString("name");
            Date birthDate = rs.getDate("birth_date");
            String password = rs.getString("password");
            Date ctd = rs.getTimestamp("create_date");
            Date utd = rs.getTimestamp("update_date");


            String createDate = new SimpleDateFormat("yyyy年MM月dd日HH時mm分").format(ctd);
            String updateDate = new SimpleDateFormat("yyyy年MM月dd日HH時mm分").format(utd);





            UserDataBeans user = new UserDataBeans(id, loginIdData, nameData, birthDate, password, createDate, updateDate);

            return user;

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

	public UserDataBeans findByLoginInfo(String loginId, String password) {
        Connection conn = null;
        try {

        		conn = DBManager.getConnection();

            String sql = "SELECT * FROM user WHERE login_id = ? and password = ?";

            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, loginId);
            pStmt.setString(2, password);
            ResultSet rs = pStmt.executeQuery();

            if (!rs.next()) {
                return null;
            }

            int id = rs.getInt("id");
            String loginIdData = rs.getString("login_id");
            String nameData = rs.getString("name");

            return new UserDataBeans(id,loginIdData,nameData);

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
    public List<UserDataBeans> findAll() {
        Connection conn = null;
        List<UserDataBeans> userList = new ArrayList<UserDataBeans>();

        try {
            conn = DBManager.getConnection();

            String sql = "SELECT * FROM user where login_id not in ('admin')";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);


            while (rs.next()) {
                int id = rs.getInt("id");
                String loginId = rs.getString("login_id");
                String name = rs.getString("name");
                String password = rs.getString("password");
                Date birthDate = rs.getDate("birth_date");
                String createDate = rs.getString("create_date");
                String updateDate = rs.getString("update_date");







                UserDataBeans user = new UserDataBeans(id, loginId, name,  birthDate, password, createDate, updateDate);

                userList.add(user);
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
        return userList;
    }



    public boolean UserNameDate(String loginId) {
    	Connection conn = null;
        try {
            conn = DBManager.getConnection();
            String namedata = "SELECT * FROM user WHERE login_Id = ?";
            PreparedStatement pStmt = conn.prepareStatement(namedata);

            pStmt.setString(1,loginId);
            ResultSet rs = pStmt.executeQuery();

            if (!rs.next()) {
                return false;
            }

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
		return true;
    }

    public void insertDate (String loginId, String password, String name, String birthDate) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String insert = "INSERT INTO user(login_id,password,name,birth_date,create_date,update_date) VALUES(?,?,?,?,now(),now())";


            PreparedStatement pStmt = conn.prepareStatement(insert);
            pStmt.setString(1, loginId);
            pStmt.setString(2, password);
            pStmt.setString(3, name);
            pStmt.setString(4, birthDate);


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
    public void updateDate (String password, String name, String birthDate, String id) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String update = "UPDATE user SET password=?,name=?,birth_date=? WHERE id=?";



            PreparedStatement pStmt = conn.prepareStatement(update);
            pStmt.setString(1, password);
            pStmt.setString(2, name);
            pStmt.setString(3, birthDate);
            pStmt.setString(4, id);

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

    public void updateDateNopass (String name, String birthDate, String id) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String update = "UPDATE user SET name=?,birth_date=? WHERE id=?";



            PreparedStatement pStmt = conn.prepareStatement(update);
            pStmt.setString(1, name);
            pStmt.setString(2, birthDate);
            pStmt.setString(3, id);

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

    public void UserDelete (String id) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String delete = "DELETE FROM user WHERE id=?";



            PreparedStatement pStmt = conn.prepareStatement(delete);

            pStmt.setString(1, id);

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

    public List<UserDataBeans> findSearch(String loginId, String name, String birthDate1, String birthDate2 ) {
        Connection conn = null;
        List<UserDataBeans> userList = new ArrayList<UserDataBeans>();

        try {
            // データベースへ接続
            conn = DBManager.getConnection();

            // SELECT文を準備
            String sql = "SELECT * FROM user where login_id not in ('admin')";

            if(!loginId.equals("")) {
            		sql += " and login_id = '" + loginId + "'";
            }

            if(!name.equals("")) {
        		sql += " and name LIKE '%" + name + "%'";
            }

            if(!birthDate1.equals("")) {
        		sql += " and birth_date >= '" + birthDate1 + "'";
            }
            if(!birthDate2.equals("")) {
        		sql += " and birth_date <= '" + birthDate2 + "'";
            }



             // SELECTを実行し、結果表を取得
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            // 結果表に格納されたレコードの内容を
            // Userインスタンスに設定し、ArrayListインスタンスに追加
            while (rs.next()) {
                int id = rs.getInt("id");
                String loginId1 = rs.getString("login_id");
                String name1 = rs.getString("name");
                String password = rs.getString("password");
                Date birthDate = rs.getDate("birth_date");
                String createDate = rs.getString("create_date");
                String updateDate = rs.getString("update_date");
                UserDataBeans user = new UserDataBeans(id, loginId1, name1, birthDate, password, createDate, updateDate);

                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            // データベース切断
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
		return userList;
    }

	 public List<ItemDataBeans> buyDetailByBuyid(String id) {
	        Connection conn = null;
	        List<ItemDataBeans> itemAll = new ArrayList<ItemDataBeans>();

	        try {
	        	conn = DBManager.getConnection();

	            String sql = "SELECT i.file_name,i.name,i.price FROM buy_detail d JOIN item i ON d.item_id = i.id WHERE d.buy_id = ? ORDER BY i.category_id ASC";

	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, id);
	            ResultSet rs = pStmt.executeQuery();


	            while (rs.next()) {

	                String fileName = rs.getString("file_name");
	                String name = rs.getString("name");
	                int price = rs.getInt("price");








	                ItemDataBeans item = new ItemDataBeans(fileName,name,price);

	                itemAll.add(item);
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
	        return itemAll;
	    }


}
