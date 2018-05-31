package cd;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserDataBeans;
import dao.UserDao;

/**
 * Servlet implementation class UserListServlet
 */
@WebServlet("/UserListServlet")
public class UserListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserListServlet() {
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

		UserDao userDao = new UserDao();
		List<UserDataBeans> userList = userDao.findAll();

		request.setAttribute("userList", userList);


		request.getRequestDispatcher(CdHelper.USER_LIST).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String loginId = request.getParameter("loginId");
		String name = request.getParameter("name");
		String birthDate1 = request.getParameter("birthDate1");
		String birthDate2 = request.getParameter("birthDate2");

		UserDao userDao = new UserDao();
		List<UserDataBeans> userList = userDao.findSearch(loginId, name, birthDate1, birthDate2);




		// リクエストスコープにユーザ一覧情報をセット
		request.setAttribute("userList", userList);

		request.getRequestDispatcher(CdHelper.USER_LIST).forward(request, response);


	}

}
