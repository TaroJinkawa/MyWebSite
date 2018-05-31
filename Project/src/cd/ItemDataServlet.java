package cd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemCategoryBeans;
import beans.ItemDataBeans;
import dao.ItemDao;

/**
 * Servlet implementation class ItemDataServlet
 */
@WebServlet("/ItemDataServlet")
public class ItemDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemDataServlet() {
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

		String id = request.getParameter("id");

		ItemDao itemdao = new ItemDao();

		ItemDataBeans itemData = itemdao.ItemData(id);

		ItemCategoryBeans categoryname = itemdao.itemCategory(itemData.getCategoryId());



		request.setAttribute("itemData", itemData);
		request.setAttribute("categoryname", categoryname);





		request.getRequestDispatcher(CdHelper.ITEM_DATA).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
