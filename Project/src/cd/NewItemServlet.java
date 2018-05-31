package cd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ItemDao;

/**
 * Servlet implementation class NewItemServlet
 */
@WebServlet("/NewItemServlet")
public class NewItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		if(null == session.getAttribute("userInfo")) {
			response.sendRedirect("MainServlet");
			return;
		}
		request.getRequestDispatcher(CdHelper.NEW_ITEM).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String categoryId = request.getParameter("categoryId");
		String brand =request.getParameter("brand");
		String name =request.getParameter("name");
		String detail =request.getParameter("detail");
		String price =request.getParameter("price");
		String adress =request.getParameter("adress");

		ItemDao newitem = new ItemDao();

		newitem.newItem(categoryId, brand, name, detail, price, adress);

		response.sendRedirect("ItemListServlet");


	}

}
