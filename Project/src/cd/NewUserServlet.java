package cd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserDataBeans;
import dao.UserDao;

/**
 * Servlet implementation class NewUserServlet
 */
@WebServlet("/NewUserServlet")
public class NewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher(CdHelper.NEW_USER).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String loginId = request.getParameter("loginId");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String birthDate = request.getParameter("birthDate");

		UserDao newuser = new UserDao();

		boolean check = newuser.UserNameDate(loginId);

		if(check) {

			request.setAttribute("errMsg", "このIDはすでに使われています");

			request.getRequestDispatcher(CdHelper.NEW_USER).forward(request, response);

		}

		if(!password.equals(password2)) {
			request.setAttribute("errMsg", "パスワードが一致しません");

			request.getRequestDispatcher(CdHelper.NEW_USER).forward(request, response);

		}

		newuser.insertDate(loginId, password, name, birthDate);


		UserDao userdao = new UserDao();
		UserDataBeans user = userdao.findByLoginInfo(loginId, password);

		HttpSession session = request.getSession();
		session.setAttribute("userInfo", user);

		response.sendRedirect("CreateDeckServlet");

	}

}
