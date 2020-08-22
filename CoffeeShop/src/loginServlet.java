import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class loginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
 
    public loginServlet() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        String usuario = request.getParameter("inpt");    
        String paginaDestino = "Login.jsp";
        
        	if (usuario.equals("admin")) {
                HttpSession session = request.getSession();
                session.setAttribute("user", usuario);
                paginaDestino = "Inicio.jsp";    
    		} else {
    			String mensaje = "Invalid email/password";
    			request.setAttribute("message", mensaje);
    		}
        	
        	RequestDispatcher dispatcher = request.getRequestDispatcher(paginaDestino);
            dispatcher.forward(request, response);
    }
}
