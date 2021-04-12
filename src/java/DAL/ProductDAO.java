/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Brand;
import model.Category;
import model.Product;

/**
 *
 * @author chisk
 */
public class ProductDAO extends BaseDAO {

    //load du lieu len page
    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "Select [product_id],[product_code],[Name],[description],[price],[quantity],[image] from Product";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product u = new Product();
                u.setProduct_id(rs.getInt(1));
                u.setProduct_code(rs.getString(2));
                u.setName(rs.getString(3));
                u.setDescription(rs.getString(4));
                u.setPrice(rs.getInt(5));
                u.setQuantity(rs.getInt(6));
                u.setImage(rs.getString(7));
                list.add(u);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    //tao 1 product
    public void insert(Product p) {
        try {
            String query = "INSERT INTO [dbo].[Product] ([product_code],[Name],[description],[price],[quantity],[image],[last_update],[category_id],[brand_id],[status])"
                    + " values (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, p.getProduct_code());
            st.setString(2, p.getName());
            st.setString(3, p.getDescription());
            st.setInt(4, p.getPrice());
            st.setInt(5, p.getQuantity());
            st.setString(6, p.getImage());
            st.setDate(7, p.getLast_update());
            st.setInt(8, p.getCategory().getCategory_id());
            st.setInt(9, p.getBrand().getBrand_id());
            st.setString(10, p.getStatus());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //lay product bang id
    public Product getProductbyID(int id) {
        Product p = new Product();
        Brand brand = new Brand();
        Category category = new Category();
        try {
            String query = "select product_id,product_code,Name,description,price,quantity,image,Brand.brand_name,Category.category_name,status,Product.last_update \n"
                    + "from ((Product inner join Category on Product.category_id = Category.category_id) inner join Brand \n"
                    + "on Product.brand_id = Brand.brand_id) where [product_id] = ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                p.setProduct_id(rs.getInt("product_id"));
                p.setProduct_code(rs.getString("product_code"));
                p.setName(rs.getString("Name"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImage(rs.getString("image"));
                p.setLast_update(rs.getDate("last_update"));
                brand.setBrand_name(rs.getString("brand_name"));
                p.setBrand(brand);
                category.setCategory_name(rs.getString("category_name"));
                p.setCategory(category);
                p.setStatus(rs.getString("status"));
                return p;
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Product> getProductbyName(String name) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select [product_id],[product_code],[Name],[description], [price],[quantity],[image],[category_name],[brand_name] from (Product \n"
                    + "inner join Category  on Product.category_id = Category.category_id) join Brand on Product.brand_id = Brand.brand_id";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Product> getProductWithBrandandCategory() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "select [product_id],[product_code],[Name],[description], [price],[quantity],[image],[category_name],[brand_name],[status] from (Product \n"
                    + "  inner join Category  on Product.category_id = Category.category_id) join Brand on Product.brand_id = Brand.brand_id";

            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProduct_id(rs.getInt("product_id"));
                p.setProduct_code(rs.getString("product_code"));
                p.setName(rs.getString("Name"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImage(rs.getString("image"));
                p.setStatus(rs.getString("status"));
                Brand brand = new Brand();
                brand.setBrand_name(rs.getString("brand_name"));
                p.setBrand(brand);
                Category category = new Category();
                category.setCategory_name(rs.getString("category_name"));
                p.setCategory(category);
                list.add(p);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    //product by category
    public ArrayList<Product> getProductByBrandName(String brand) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "  select [product_id],[product_code],[Name],[description], [price],[quantity],[image],[category_name],[brand_name],[status] from (Product\n"
                    + "  inner join Category  on Product.category_id = Category.category_id) join Brand on Product.brand_id = Brand.brand_id \n"
                    + "  where brand_name = ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, brand);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProduct_id(rs.getInt("product_id"));
                p.setProduct_code(rs.getString("product_code"));
                p.setName(rs.getString("Name"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImage(rs.getString("image"));
                Brand brandObj = new Brand();
                brandObj.setBrand_name(rs.getString("brand_name"));
                p.setBrand(brandObj);
                Category categoryObj = new Category();
                categoryObj.setCategory_name(rs.getString("category_name"));
                p.setCategory(categoryObj);
                p.setStatus(rs.getString("status"));
                list.add(p);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Product> getProductByCategoryName(String category) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "  select [product_id],[product_code],[Name],[description], [price],[quantity],[image],[category_name],[brand_name],[status] from (Product\n"
                    + "  inner join Category  on Product.category_id = Category.category_id) join Brand on Product.brand_id = Brand.brand_id \n"
                    + "  where category_name = ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, category);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProduct_id(rs.getInt("product_id"));
                p.setProduct_code(rs.getString("product_code"));
                p.setName(rs.getString("Name"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImage(rs.getString("image"));
                Brand brandObj = new Brand();
                brandObj.setBrand_name(rs.getString("brand_name"));
                p.setBrand(brandObj);
                Category categoryObj = new Category();
                categoryObj.setCategory_name(rs.getString("category_name"));
                p.setCategory(categoryObj);
                p.setStatus(rs.getString("status"));
                list.add(p);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void update(Product p) {
        try {
            String query = "Update Product set [product_code]=? ,[Name] =?,[description]=?,"
                    + "[price]=?, [quantity]=?,[image]=?,[last_update]=?,[category_id]=?,"
                    + "[brand_id]=?,[status]=? where [product_id] = ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, p.getProduct_code());
            st.setString(2, p.getName());
            st.setString(3, p.getDescription());
            st.setInt(4, p.getPrice());
            st.setInt(5, p.getQuantity());
            st.setString(6, p.getImage());
            st.setDate(7, p.getLast_update());
            st.setInt(8, p.getCategory().getCategory_id());
            st.setInt(9, p.getBrand().getBrand_id());
            st.setString(10, p.getStatus());
            st.setInt(11, p.getProduct_id());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(int id) {
        try {
            String query = "delete from Product where [product_id] = ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Product> getProductViaSearch(String string) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String query = "  select [product_id],[product_code],[Name],[description], [price],[quantity],[image],[category_name],[brand_name],[status] from (Product\n"
                    + "  inner join Category  on Product.category_id = Category.category_id) join Brand on Product.brand_id = Brand.brand_id \n"
                    + "  where product_code like '%" + string + "%' or  Name like '%" + string + "%' or brand_name like '%" + string + "%' or category_name like '%" + string + "%' ";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProduct_id(rs.getInt("product_id"));
                p.setProduct_code(rs.getString("product_code"));
                p.setName(rs.getString("Name"));
                p.setDescription(rs.getString("description"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImage(rs.getString("image"));
                Brand brandObj = new Brand();
                brandObj.setBrand_name(rs.getString("brand_name"));
                p.setBrand(brandObj);
                Category categoryObj = new Category();
                categoryObj.setCategory_name(rs.getString("category_name"));
                p.setCategory(categoryObj);
                p.setStatus(rs.getString("status"));
                list.add(p);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        ArrayList<Product> list = dao.getProductByCategoryName("Pomade");
        for (Product product : list) {
            System.out.println(product);
        }
    }
}
