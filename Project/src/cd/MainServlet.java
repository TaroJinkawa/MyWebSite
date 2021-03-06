package cd;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserDataBeans;
import dao.UserDao;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		if(null != session.getAttribute("userInfo")) {
			response.sendRedirect("CreateDeckServlet");
			return;
		}


		request.getRequestDispatcher(CdHelper.MAIN).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");


		String loginId = request.getParameter("loginId");
		String password = request.getParameter("password");

		UserDao userdao = new UserDao();
		UserDataBeans user = userdao.findByLoginInfo(loginId, password);

		if (user == null) {

			request.setAttribute("errMsg", "ログインに失敗しました。");

			RequestDispatcher dispatcher = request.getRequestDispatcher(CdHelper.MAIN);
			dispatcher.forward(request, response);
			return;
		}

		int mngnum = user.getId();

		if(mngnum == 1) {

			HttpSession session = request.getSession();
			session.setAttribute("userInfo", user);

			response.sendRedirect("SelectServlet");
			return;

		}

		HttpSession session = request.getSession();
		session.setAttribute("userInfo", user);

		response.sendRedirect("CreateDeckServlet");
	}

}
