
@WebServlet(name = "conta", value = "/conta")
public class Contatore extends HttpServlet {
    static int cont = 0;


    public void incrementa(){
        cont++;
    }

    public int getContatore(){
        return cont;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");


        PrintWriter out = response.getWriter();
        out.println(cont);
    }

    public void destroy() {
    }
    
}