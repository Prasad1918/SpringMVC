package irs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register RegisterServlet URL is this
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String uid = request.getParameter("uid");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String city = request.getParameter("city");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		Customer customer = new Customer();
		customer.setUserId(uid);
		customer.setPassword(password);
		customer.setName(name);
		customer.setCity(city);
		customer.setEmail(email);
		customer.setPhone(phone);

		// response.sendRedirect("Success.jsp");

		RegisterDao registerDao = new RegisterDao();

		// The core Logic of the Registration application is present here. We
		// are going to insert user data in to the database.
		String userRegistered = registerDao.registerUser(customer);

		if (userRegistered.equals("SUCCESS")) // On success, you can display a
												// message to user on Home page
		{
			response.sendRedirect("success.jsp");
			// request.getRequestDispatcher("/Success.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/failure.jsp").forward(request, response);
		}
	}
}
