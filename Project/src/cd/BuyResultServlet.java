package cd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.BuyDataBeans;
import beans.DeliveryDataBeans;
import dao.BuyDao;

/**
 * Servlet implementation class BuyResultServlet
 */
@WebServlet("/BuyResultServlet")
public class BuyResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyResultServlet() {
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

		String buyId = request.getParameter("buyid");

		BuyDao buydao = new BuyDao();

		BuyDataBeans buydata = buydao.buyData(buyId);

		request.setAttribute("buydata", buydata);

		String deliveryId = buydata.getDeliveryId();

		DeliveryDataBeans ddb = buydao.deliveryName(deliveryId);

		request.setAttribute("deliverydata", ddb);

		request.getRequestDispatcher(CdHelper.BUY_RESULT).forward(request, response);
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
