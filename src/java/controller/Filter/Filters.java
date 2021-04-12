package controller.Filter;
 
import java.io.IOException;
 
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
 
/**
 * This Java filter demonstrates how to intercept the request
 * and transform the response to implement authentication feature
 * for the website's front-end.
 *
 * @author www.codejava.net
 */
@WebFilter("/*")
public class Filters implements Filter {
    private HttpServletRequest httpRequest;
 
    private static final String[] loginRequiredURLs = {
            "/Adminn.jsp", "/ProductManagement.jsp", "/CustomerController","/BrandController",
        "/CategoryController","/UpdateProduct.jsp","/UpdateCategory.jsp"
    };
 
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        httpRequest = (HttpServletRequest) request;
 
        String path = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());
 
        if (path.equals(loginRequiredURLs)) {
            chain.doFilter(request, response);
            return;
        }
 
        HttpSession session = httpRequest.getSession(false);
        boolean isLoggedIn = (session != null && session.getAttribute("admin") != null);
 
        String loginURI = httpRequest.getContextPath() + "/LoginController";
        boolean isLoginRequest = httpRequest.getRequestURI().equals(loginURI);
        boolean isLoginPage = httpRequest.getRequestURI().endsWith("Login.jsp");
 
        if (isLoggedIn && (isLoginRequest || isLoginPage)) {
            // the user is already logged in and he's trying to login again
            // then forward to the homepage
            httpRequest.getRequestDispatcher("/").forward(request, response);
 
        } else if (!isLoggedIn && isLoginRequired()) {
            // the user is not logged in, and the requested page requires
            // authentication, then forward to the login page
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            // for other requested pages that do not require authentication
            // or the user is already logged in, continue to the destination
            chain.doFilter(request, response);
        }
    }
 
 
    private boolean isLoginRequired() {
        String requestURL = httpRequest.getRequestURL().toString();
 
        for (String loginRequiredURL : loginRequiredURLs) {
            if (requestURL.contains(loginRequiredURL)) {
                return true;
            }
        }
 
        return false;
    }
 
    public Filters() {
    }
 
    public void destroy() {
    }
 
    public void init(FilterConfig fConfig) throws ServletException {
    }
 
}