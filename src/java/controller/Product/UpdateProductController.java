/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.Product;

import DAL.CategoryDAO;
import DAL.ProductDAO;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Brand;
import model.Category;
import model.Product;

/**
 *
 * @author chisk
 */
public class UpdateProductController extends HttpServlet {

    public String getCurrentDate() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        return dateFormat.format(calendar.getTime());
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductDAO dao = new ProductDAO();
        Product product = dao.getProductbyID(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("UpdateProduct.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int product_id = Integer.parseInt(request.getParameter("product_id"));
        String product_code = request.getParameter("product_code");
        String product_name = request.getParameter("name");
        Date last_update = Date.valueOf(getCurrentDate());
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String status = request.getParameter("status");
        String description = request.getParameter("description");
        String brand_name = request.getParameter("brand_name");
        String category_name = request.getParameter("category_name");
        String image = request.getParameter("image");
        CategoryDAO catedao = new CategoryDAO();
        Brand brand = catedao.getBrandbyName(brand_name);
        Category category = catedao.getCategorybyName(category_name);
        Product p = new Product();
        p.setProduct_id(product_id);
        p.setProduct_code(product_code);
        p.setName(product_name);
        p.setPrice(price);
        p.setQuantity(quantity);
        p.setDescription(description);
        p.setImage(image);
        p.setStatus(status);
        p.setBrand(brand);
        p.setCategory(category);
        p.setLast_update(last_update);
        ProductDAO productdao = new ProductDAO();
        productdao.update(p);
        response.sendRedirect("ProductManagement.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
