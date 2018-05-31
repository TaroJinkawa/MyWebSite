package cd;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemDataBeans;
import dao.ItemDao;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String itemId = request.getParameter("itemId");

		ItemDao itemdao = new ItemDao();
		ItemDataBeans idb = itemdao.ItemData(itemId);
		int idbc = idb.getCategoryId();
		String categoryId = String.valueOf(idbc);



		// カートの情報を取得
		HttpSession session = request.getSession();



		HashMap<String, String> cart = (HashMap<String, String>) session.getAttribute("cart");

		// 選択したカテゴリのをキーにしてアイテム情報を追加

		if (cart == null) {
			cart = new HashMap<>();
			session.setAttribute("cart", cart);
		}

		if(idbc == 1) {

		cart.put("deck", itemId);



		session.setAttribute("deck", idb);





		}

		if(idbc == 2) {

			cart.put("track", itemId);



			session.setAttribute("track", idb);


		}

		if(idbc == 3) {

			cart.put("decktape", itemId);


			session.setAttribute("decktape", idb);


		}

		if(idbc == 4) {

			cart.put("vis", itemId);

			session.setAttribute("vis", idb);



		}

		if(idbc == 5) {

			cart.put("wheel", itemId);

			session.setAttribute("wheel", idb);


		}

		if(idbc == 6) {

			cart.put("bearing", itemId);

			session.setAttribute("bearing", idb);


		}

		CdHelper.checkComplete(session);
		request.getRequestDispatcher(CdHelper.CREATE_DECK).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


}
