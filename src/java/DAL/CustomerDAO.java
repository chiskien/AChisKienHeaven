package DAL;

import java.util.ArrayList;
import model.Customer;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CustomerDAO extends BaseDAO {

    public ArrayList<Customer> getCustomers() {
        ArrayList<Customer> list = new ArrayList<>();
        try {
            String query = "Select * from Customer";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomer_id(rs.getInt(1));
                customer.setUsername(rs.getString(2));
                customer.setPassword(rs.getString(3));
                customer.setFirst_name(rs.getString(4));
                customer.setLast_name(rs.getString(5));
                customer.setPhone(rs.getString(6));
                customer.setEmail(rs.getString(7));
                customer.setStreet(rs.getString(8));
                customer.setCity(rs.getString(9));
                list.add(customer);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return list;
    }

    public void insert(Customer customer) {
        try {
            String query = "  insert into Customer ([username],[password],[first_name],[last_name],[phone],[email],[street],[city]) values (?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, customer.getUsername());
            st.setString(2, customer.getPassword());
            st.setString(3, customer.getFirst_name());
            st.setString(4, customer.getLast_name());
            st.setString(5, customer.getPhone());
            st.setString(6, customer.getEmail());
            st.setString(7, customer.getStreet());
            st.setString(8, customer.getCity());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Customer getCustomer(String username, String password) {
        try {
            String query = "Select * from Customer where [customer_name]=? and [customer_password]= ?";
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            Customer customer = new Customer();
            if (rs.next()) {
                customer.setUsername(rs.getString("username"));
                customer.setPassword(rs.getString("password"));
                return customer;
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return null;
    }

    public void delete(int id) {
        try {
            String query = "delete from Customer where [customer_id] = ? ";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();
        ArrayList<Customer> list = dao.getCustomers();
        for (Customer p : list) {
            System.out.println(p);
        }

    }
}
