package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.Admin;
import util.HibernateUtil;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/passwordChange")
public class AdminPasswordChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminPasswordChangeServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside doPost method of AdminPasswordChangeServlet");
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		String adminName = request.getParameter("admin");
		String newPassword = request.getParameter("newPassword");
		Admin adminDataFromDb = session.get(Admin.class, 1);
		adminDataFromDb.setAdminPassword(newPassword);
		@SuppressWarnings("unchecked")
		List<Admin> adminDb = session.createQuery("from Admin").list();
		System.out.println("admin data from db : " + adminDb.get(0).toString());
		int adminId = adminDb.get(0).getId();
		Admin admin = new Admin(adminId, adminName, newPassword);
		System.out.println("New details of admin : " + admin.toString());
		session.update(adminDataFromDb);
		transaction.commit();
		request.getRequestDispatcher("logout.jsp");
		request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
	}

}
