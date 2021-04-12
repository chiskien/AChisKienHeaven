package DAL;

import java.util.ArrayList;
import model.Admin;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdminDAO extends BaseDAO {

    public ArrayList<Admin> getAllAdmin() {
        ArrayList<Admin> list = new ArrayList<>();
        try {
            String query = "Select * from Admin";
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Admin(rs.getString(1), rs.getString(2)));
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return list;
    }
    public Admin getAdmin(String username, String password) {
        try {
            String query = "Select * from Admin where [username]=? and [password]= ?";
            PreparedStatement st =connection.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            Admin admin = new Admin();
            if(rs.next()) {
                admin.setAdmin(rs.getString("username"));
                admin.setPassword(rs.getString("password"));
                return admin;
            }
            rs.close();
        }  catch (SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return null;
    }
    public static void main(String[] args) {
        AdminDAO dao = new AdminDAO();
        Admin a = dao.getAdmin("chiskien", "14092001");
        System.out.println(a);
    }
}
