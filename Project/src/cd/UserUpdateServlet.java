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
 * Servlet implementation class UserUpdateServlet
 */
@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdateServlet() {
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

		UserDao userdata = new UserDao();

		UserDataBeans userData = userdata.UserData(id);

		request.setAttribute("userData", userData);
		request.setAttribute("userid", id);




		request.getRequestDispatcher(CdHelper.USER_UPDATE).forward(request, response);
		request.setCharacterEncoding("UTF-8");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String birthDate = request.getParameter("birthDate");
		String id = request.getParameter("id");




		if(!password.equals(password2)) {
			request.setAttribute("errMsg", "パスワードが一致しません");

			String id2 = request.getParameter("id");
			request.setAttribute("userid", id2);

			UserDao userdata = new UserDao();

			UserDataBeans userData = userdata.UserData(id);

			request.setAttribute("userData", userData);

			request.getRequestDispatcher(CdHelper.USER_UPDATE).forward(request, response);

		}
		if(password.equals("")) {
			UserDao userupdatenopass = new UserDao();
			userupdatenopass.updateDateNopass(name, birthDate, id);

			response.sendRedirect("UserListServlet");
			return;
		}

		UserDao updateuser = new UserDao();

		updateuser.updateDate(password,name,birthDate,id);

		response.sendRedirect("UserListServlet");


	}

}
