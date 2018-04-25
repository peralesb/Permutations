package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SPermutaciones
 */
@WebServlet(description = "Controlador de la solucion permutaciones", urlPatterns = { "/SPermutaciones" })
public class SPermutaciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SPermutaciones() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     * Ejecuta el algoritmo de permutacion sobre una cadena de texto
     * @param s: el string a permutar
     * @return: String con permutaciones separadas por saltos de linea \n
     */
    public String Permute (String s)
    {
        char []array = s.toCharArray();
        String result = "";
        
        int len = s.length();
        
        for (int i=0; i < len; i++)
        {
            for (int j=1; j < len; j++)
            {
                result += new String (array);
                result += "\n";
                //System.out.println (array);
                char temp = array[j-1];
                array[j-1] = array[j];
                array[j] = temp;
            }
        }
        
        return result;
    }

	/**
	 * Recibe la información con el método post, procesa la información y devuelve un forward
	 * para poner los resultado en el mismo formulario de entrada
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		String parametro;
		parametro = request.getParameter("cadena");
		
		request.setAttribute("cadena", parametro);
		
		if(parametro != null && parametro.length() > 0)
			request.setAttribute("Permutaciones", Permute(parametro));
		else
			request.setAttribute("Permutaciones", "");
		
		// Calculamos numero de permutaciones como dato adicional
		int numPerm = parametro.length()*(parametro.length()-1);
		request.setAttribute("numPerm", numPerm<0?0:numPerm);
		
		request.getRequestDispatcher("/Permutations.jsp").forward(request, response);
		
	}

}
