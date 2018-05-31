package cd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DeliveryDataBeans;
import dao.BuyDao;

/**
 * Servlet implementation class BuyServlet
 */
@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyServlet() {
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

		request.getRequestDispatcher(CdHelper.BUY).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userid = request.getParameter("userId");

		String deliveryId = request.getParameter("delivery_method_id");


		BuyDao buydao = new BuyDao();

		DeliveryDataBeans ddb = buydao.deliveryName(deliveryId);
		String dvp = ddb.getPrice();
		int deliveryPrice = Integer.parseInt(dvp);

		String deckprice = request.getParameter("deckPrice");
		String deckid = request.getParameter("deckId");
		int deckPrice = Integer.parseInt(deckprice);

		String trackprice = request.getParameter("trackPrice");
		String trackid = request.getParameter("trackId");
		int trackPrice = Integer.parseInt(trackprice);

		String decktapeprice = request.getParameter("decktapePrice");
		String decktapeid = request.getParameter("decktapeId");
		int decktapePrice = Integer.parseInt(decktapeprice);

		String visprice = request.getParameter("visPrice");
		String visid = request.getParameter("visId");
		int visPrice = Integer.parseInt(visprice);

		String wheelprice = request.getParameter("wheelPrice");
		String wheelid = request.getParameter("wheelId");
		int wheelPrice = Integer.parseInt(wheelprice);

		String bearingprice = request.getParameter("bearingPrice");
		String bearingid = request.getParameter("bearingId");
		int bearingPrice = Integer.parseInt(bearingprice);

		int totalprice = deckPrice + trackPrice + decktapePrice + visPrice + wheelPrice + bearingPrice + deliveryPrice;




		buydao.newbuy(userid, totalprice, deliveryId);

		String buyid = buydao.BuyId();

		buydao.newbuyItem(buyid, deckid);

		buydao.newbuyItem(buyid, trackid);

		buydao.newbuyItem(buyid, decktapeid);

		buydao.newbuyItem(buyid, visid);

		buydao.newbuyItem(buyid, wheelid);

		buydao.newbuyItem(buyid, bearingid);





		response.sendRedirect("BuyResultServlet?buyid=" + buyid);


	}

}
