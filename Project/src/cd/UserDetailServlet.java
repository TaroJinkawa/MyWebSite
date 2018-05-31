package cd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.BuyDataBeans;
import beans.UserDataBeans;
import dao.BuyDao;
import dao.UserDao;

/**
 * Servlet implementation class UserDetailServlet
 */
@WebServlet("/UserDetailServlet")
public class UserDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDetailServlet() {
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

		String userId = request.getParameter("userid");

		UserDao userdao = new UserDao();

		UserDataBeans userdata = userdao.UserData(userId);

		request.setAttribute("userdata", userdata);

		BuyDao buydao = new BuyDao();


		List<BuyDataBeans> buyList = buydao.BuyAll(userId);

		request.setAttribute("buyList", buyList);




		request.getRequestDispatcher(CdHelper.USER_DETAIL).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String name = request.getParameter("username");
		String birthDate = request.getParameter("birthDate");

		UserDao userdao = new UserDao();

		if(!password.equals(password2)) {
			request.setAttribute("errMsg", "パスワードが一致しません");



			UserDataBeans userdata = userdao.UserData(userId);

			request.setAttribute("userdata", userdata);

			request.getRequestDispatcher(CdHelper.USER_DETAIL).forward(request, response);

		}




		userdao.updateDate(password2, name, birthDate, userId);

		UserDataBeans userdata = userdao.UserData(userId);

		request.setAttribute("userdata", userdata);

		request.getRequestDispatcher(CdHelper.USER_DETAIL).forward(request, response);


	}

}
