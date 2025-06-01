/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBUtil;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ZBook
 */
public class DAO {

    Connection conn = null;//ket noi voi sql server
    PreparedStatement ps = null;//nem query qua sql server
    ResultSet rs = null;//nhan ket qua tra ve

    //Ham lay tat ca san pham co trong db va bo vao list
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();//Tao mot list de nhan du lieu tu db
        //Cau lenh query lay du lieu tu db
        String query = "select*from product";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();//Tao mot list de nhan du lieu tu db
        //Cau lenh query lay du lieu tu db
        String query = "select*from category";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getNewProduct() {
        List<Product> list = new ArrayList<>();//Tao mot list de nhan du lieu tu db
        //Cau lenh query lay du lieu tu db
        String query = "select  * from product order by id desc limit 5;";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductByCid(int cid) {
        List<Product> list = new ArrayList<>();//Tao mot list de nhan du lieu tu db
        //Cau lenh query lay du lieu tu db
        String query = "select  * from product where cid=?";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            ps.setInt(1, cid);//replace the first ? placeholder in the SQL with the value of cid
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
//lay ket qua tu rs va day vao trong Product object sau do day object vao trong list
                list.add(new Product(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductDetail(String id) {

        //Cau lenh query lay du lieu tu db
        String query = "select  * from product where id=?";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            ps.setString(1, id);//replace the first ? placeholder in the SQL with the value of cid
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
                return new Product(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchByName(String name) {
        List<Product> list = new ArrayList<>();//Tao mot list de nhan du lieu tu db
        //Cau lenh query lay du lieu tu db
        String query = "select  * from product where name like ? ";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            ps.setString(1, "%" + name + "%");//replace the first ? placeholder in the SQL with the value of cid
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
//lay ket qua tu rs va day vao trong Product object sau do day object vao trong list
                list.add(new Product(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }

        } catch (Exception e) {
        }
        return list;
    }
    //Ham tra ve 1 account neu login dung, null neu sai

    public Account login(String user, String pass) {

        String query = "select * from account where user=? and pass=?";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
//lay ket qua tu rs va day vao trong Product object sau do day object vao trong list
                return new Account(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public Account checkExistAccount(String user) {

        String query = "select * from account where user=?";
        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            ps.setString(1, user);

            rs = ps.executeQuery();//chay cau len query se duoc rs(result)
            while (rs.next()) {
//lay ket qua tu rs va day vao trong Product object sau do day object vao trong list
                return new Account(rs.getInt(1),//Lay data cua cot 1
                        rs.getString(2),//Lay data cua cot 2
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }

        } catch (Exception e) {
        }
        return null;
    }
    //void vi sign up khong tra ve gi ca

    public void signUp(String user, String pass) {
        String query = "INSERT INTO account (user, pass, isSell, isAdmin) VALUES (?,?, 0, 0);";//0 la admin,0 seller

        try {
            conn = new DBUtil().getConnection();//mo ket noi voi sql server
            ps = conn.prepareStatement(query);//gui query qua sql server
            ps.setString(1, user);
            ps.setString(2, pass);

            //sai vi khi chay cau lenh tren se khong co bang result(insert vao db)
//            rs = ps.executeQuery();
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
//    Co 2 cach de load du lieu len tren jsp
//    1.Dung bean
//    2.Servlet

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        List<Product> newP = dao.searchByName("shirt");
        for (Product o : newP) {
            System.out.println(o);
        }
    }
}
