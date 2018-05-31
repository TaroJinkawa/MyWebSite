package cd;

import javax.servlet.http.HttpSession;

public class CdHelper {

	static final String BUY_RESULT = "WEB-INF/jsp/buyresult.jsp";

	static final String BUY = "WEB-INF/jsp/buy.jsp";

	static final String CREATE_DECK = "WEB-INF/jsp/createdeck.jsp";

	static final String ITEM_DATA = "WEB-INF/jsp/itemdata.jsp";

	static final String ITEM_DELETE = "WEB-INF/jsp/itemdelete.jsp";

	static final String ITEM_DETAIL = "WEB-INF/jsp/itemdetail.jsp";

	static final String ITEM_LIST = "WEB-INF/jsp/itemlist.jsp";

	static final String ITEM_UPDATE = "WEB-INF/jsp/itemupdate.jsp";

	static final String MAIN = "WEB-INF/jsp/main.jsp";

	static final String NEW_ITEM = "WEB-INF/jsp/newitem.jsp";

	static final String NEW_USER = "WEB-INF/jsp/newuser.jsp";

	static final String SELECT = "WEB-INF/jsp/select.jsp";

	static final String USER_DATA = "WEB-INF/jsp/userdata.jsp";

	static final String USER_DELETE = "WEB-INF/jsp/userdelete.jsp";

	static final String USER_DETAIL = "WEB-INF/jsp/userdetail.jsp";

	static final String USER_LIST = "WEB-INF/jsp/userlist.jsp";

	static final String USER_UPDATE = "WEB-INF/jsp/userupdate.jsp";


	public static CdHelper getInstance() {
		return new CdHelper();
	}

	public static void checkComplete(HttpSession session) {
		boolean result = true;

		if (session.getAttribute("deck") == null ) {
			result = false;
		}

		if (session.getAttribute("track") == null ) {
			result = false;
		}

		if (session.getAttribute("decktape") == null ) {
			result = false;
		}
		if (session.getAttribute("vis") == null ) {
			result = false;
		}
		if (session.getAttribute("wheel") == null ) {
			result = false;
		}
		if (session.getAttribute("bearing") == null ) {
			result = false;
		}

		session.setAttribute("isComplete", result);
	}

}
