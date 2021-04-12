/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.util.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Brand;
import model.Category;

/**
 *
 * @author chisk
 */
public class CategoryDAO extends BaseDAO {

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> list = new ArrayList<>();
        try {
            String query = "Select [category_id], [category_name],[last_update] from Category";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getDate(3)));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void insert(Category category) {
        try {
            String query = "INSERT INTO Category([category_name] ,[last_update]) VALUES (?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, category.getCategory_name());
            st.setDate(2, category.getLast_update());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(Brand brand) {
        try {
            String query = "INSERT INTO Brand([brand_name],[last_update],[origin] )VALUES (?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, brand.getBrand_name());
            st.setDate(2, brand.getLast_update());
            st.setString(3, brand.getOrigin());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void update(Category category) {
        try {
            String query = "UPDATE Category SET [category_name]=?,[last_update] =? WHERE [category_id]=?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, category.getCategory_name());
            st.setDate(2, category.getLast_update());
            st.setInt(3, category.getCategory_id());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void update(Brand brand) {
        try {
            String query = "UPDATE Brand SET [brand_name]=?,[last_update] =?,[origin]=? WHERE [brand_id]=?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, brand.getBrand_name());
            st.setDate(2, brand.getLast_update());
            st.setString(3, brand.getOrigin());
            st.setInt(3, brand.getBrand_id());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Category getCategorybyID(int ID) {
        Category category = new Category();
        try {
            String query = "SELECT * FROM Category WHERE [category_id]=?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, ID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                category.setCategory_id(rs.getInt("category_id"));
                category.setCategory_name(rs.getString("category_name"));
                category.setLast_update(rs.getDate("last_update"));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return category;
    }

    public void delete(int ID) {
        try {
            String query = "DELETE FROM Category WHERE [category_id] = ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, ID);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Brand> getAllBrand() {
        ArrayList<Brand> list = new ArrayList<>();
        try {
            String query = "Select [brand_id], [brand_name],[origin], [last_update] from Brand";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Brand(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4)));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Brand getBrandbyName(String brand_name) {
        Brand brand = new Brand();
        try {
            String query = "SELECT * FROM Brand WHERE [brand_name]=?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, brand_name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                brand.setBrand_id(rs.getInt("brand_id"));
                brand.setBrand_name(rs.getString("brand_name"));
                brand.setLast_update(rs.getDate("last_update"));
                brand.setOrgin(rs.getString("origin"));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return brand;
    }

    public Category getCategorybyName(String category_name) {
        Category category = new Category();
        try {
            String query = "SELECT * FROM Category WHERE [category_name]=?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, category_name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                category.setCategory_id(rs.getInt("category_id"));
                category.setCategory_name(rs.getString("category_name"));
                category.setLast_update(rs.getDate("last_update"));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return category;
    }

    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        Brand brand = new Brand();
        brand.setBrand_name("18.21");
        brand.setOrgin("USA");
        brand.setLast_update(java.sql.Date.valueOf("2021-04-16"));
        dao.insert(brand);
        ArrayList<Brand> list = dao.getAllBrand();
        for (Brand category : list) {
            System.out.println(category);
        }
    }

}
