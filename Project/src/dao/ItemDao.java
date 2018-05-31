package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import base.DBManager;
import beans.ItemCategoryBeans;
import beans.ItemDataBeans;

public class ItemDao {

	public List<ItemDataBeans> findAll() {
        Connection conn = null;
        List<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();

        try {
            conn = DBManager.getConnection();

            String sql = "SELECT * FROM item";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);


            while (rs.next()) {
                int id = rs.getInt("id");
                int categoryId = rs.getInt("category_id");
                String name = rs.getString("name");
                String brand = rs.getString("brand");
                String detail = rs.getString("detail");
                int price = rs.getInt("price");
                String fileName = rs.getString("file_name");







                ItemDataBeans item = new ItemDataBeans(id, categoryId, name,  brand, detail, price, fileName);

                itemList.add(item);
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
        return itemList;
    }


	public ItemDataBeans ItemData(String id) {
        Connection conn = null;
        try {

    		conn = DBManager.getConnection();

        String sql = "SELECT * FROM item WHERE id = ?";

        PreparedStatement pStmt = conn.prepareStatement(sql);
        pStmt.setString(1, id);
        ResultSet rs = pStmt.executeQuery();

        if (!rs.next()) {
            return null;
        }
        int id2 = rs.getInt("id");
        int categoryId = rs.getInt("category_id");
        String name = rs.getString("name");
        String brand = rs.getString("brand");
        String detail = rs.getString("detail");
        int price = rs.getInt("price");
        String fileName = rs.getString("file_name");


        ItemDataBeans item = new ItemDataBeans(id2, categoryId, name,  brand, detail, price, fileName);

        return item;

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





	public ItemCategoryBeans itemCategory(int loginId) {
        Connection conn = null;
        try {

        		conn = DBManager.getConnection();

            String sql = "SELECT * FROM item_category WHERE id = ?";

            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setInt(1, loginId);
            ResultSet rs = pStmt.executeQuery();

            if (!rs.next()) {
                return null;
            }

            int id = rs.getInt("id");
            String categoryName = rs.getString("category_name");




            ItemCategoryBeans itemCategory = new ItemCategoryBeans(id,categoryName);

            return itemCategory;

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

	public void updateItemDate (String categoryId, String brand, String name, String detail,String price,String adress,String id) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String update = "UPDATE item SET category_id =?,brand=?,name=?,detail=?, price=?,file_name=? WHERE id=?";



            PreparedStatement pStmt = conn.prepareStatement(update);
            pStmt.setString(1, categoryId);
            pStmt.setString(2, brand);
            pStmt.setString(3, name);
            pStmt.setString(4, detail);
            pStmt.setString(5, price);
            pStmt.setString(6, adress);
            pStmt.setString(7, id);

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
	public void ItemDelete (String id) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String delete = "DELETE FROM item WHERE id=?";



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

	public void newItem (String categoryId, String brand, String name, String detail,String price,String adress) {
        Connection conn = null;
        try {
            // データベースへ接続
            conn = DBManager.getConnection();
            String insert = "INSERT INTO item(category_id,brand,name,detail,price,file_name) VALUES(?,?,?,?,?,?)";


            PreparedStatement pStmt = conn.prepareStatement(insert);
            pStmt.setString(1, categoryId);
            pStmt.setString(2, brand);
            pStmt.setString(3, name);
            pStmt.setString(4, detail);
            pStmt.setString(5, price);
            pStmt.setString(6, adress);


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

	 public List<ItemDataBeans> findSearch(String categoryId, String brand, String name, String price1,String price2) {
	        Connection conn = null;
	        List<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();

	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            String sql = "SELECT * FROM item where id";

	            if(!categoryId.equals("")) {
	            		sql += " and category_id = '" + categoryId + "'";
	            }

	            if(!brand.equals("")) {
	        		sql += " and brand LIKE '%" + brand + "%'";
	            }

	            if(!name.equals("")) {
	        		sql += " and name LIKE '%" + name + "%'";
	            }

	            if(!price1.equals("")) {
	        		sql += " and price >= '" + price1 + "'";
	            }
	            if(!price2.equals("")) {
	        		sql += " and price <= '" + price2 + "'";
	            }



             // SELECTを実行し、結果表を取得
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            // 結果表に格納されたレコードの内容を
            // Userインスタンスに設定し、ArrayListインスタンスに追加
            while (rs.next()) {
            	int id = rs.getInt("id");
                int categoryId2 = rs.getInt("category_id");
                String name2 = rs.getString("name");
                String brand2 = rs.getString("brand");
                String detail = rs.getString("detail");
                int price = rs.getInt("price");
                String fileName = rs.getString("file_name");

                ItemDataBeans item = new ItemDataBeans(id, categoryId2, name2,  brand2, detail, price, fileName);

                itemList.add(item);
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
		return itemList;
    }

	 public List<ItemDataBeans> categoryAll(String id) {
	        Connection conn = null;
	        List<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();

	        try {
	        	conn = DBManager.getConnection();

	            String sql = "SELECT * FROM item WHERE category_id = ?";

	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, id);
	            ResultSet rs = pStmt.executeQuery();


	            while (rs.next()) {
	                int id2 = rs.getInt("id");
	                int categoryId2 = rs.getInt("category_id");
	                String name = rs.getString("name");
	                String brand = rs.getString("brand");
	                String detail = rs.getString("detail");
	                int price = rs.getInt("price");
	                String fileName = rs.getString("file_name");







	                ItemDataBeans item = new ItemDataBeans(id2, categoryId2, name,  brand, detail, price, fileName);

	                itemList.add(item);
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
	        return itemList;
	    }



}
