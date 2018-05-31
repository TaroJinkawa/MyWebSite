package cd;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class ItemDetailServlet
 */
@WebServlet("/ItemDetailServlet")
public class ItemDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemDetailServlet() {
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


		request.setAttribute("id", id);
		ItemDao itemDao = new ItemDao();
		List<ItemDataBeans> itemList = itemDao.categoryAll(id);

		int cn = Integer.parseInt(id);

		ItemCategoryBeans itemCategory = itemDao.itemCategory(cn);

		request.setAttribute("itemCategory", itemCategory);

		request.setAttribute("itemList", itemList);

		request.getRequestDispatcher(CdHelper.ITEM_DETAIL).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String categoryId = request.getParameter("categoryId");
		String brand = request.getParameter("brand");
		String name = request.getParameter("name");
		String price1 = request.getParameter("price1");
		String price2 = request.getParameter("price2");

		ItemDao itemdao = new ItemDao();
		List<ItemDataBeans> itemList = itemdao.findSearch(categoryId, brand, name, price1, price2);

		request.setAttribute("itemList", itemList);

		ItemDao itemDao = new ItemDao();

		int cn = Integer.parseInt(categoryId);

		ItemCategoryBeans itemCategory = itemDao.itemCategory(cn);

		request.setAttribute("itemCategory", itemCategory);


		request.getRequestDispatcher(CdHelper.ITEM_DETAIL).forward(request, response);
	}

}
