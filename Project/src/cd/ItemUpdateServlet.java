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
 * Servlet implementation class ItemUpdateServlet
 */
@WebServlet("/ItemUpdateServlet")
public class ItemUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemUpdateServlet() {
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


		request.setAttribute("userid", id);
		request.setAttribute("itemData", itemData);
		request.setAttribute("categoryname", categoryname);

		request.getRequestDispatcher(CdHelper.ITEM_UPDATE).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");


		String id =request.getParameter("id");
		String categoryId = request.getParameter("categoryId");
		String brand =request.getParameter("brand");
		String name =request.getParameter("name");
		String detail =request.getParameter("detail");
		String price =request.getParameter("price");
		String adress =request.getParameter("adress");

		ItemDao updateItem = new ItemDao();
		updateItem.updateItemDate(categoryId, brand, name, detail, price, adress, id);

		response.sendRedirect("ItemListServlet");

	}

}
