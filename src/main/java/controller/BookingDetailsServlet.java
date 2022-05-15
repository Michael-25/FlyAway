package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.Flight;
import model.User;
import util.HibernateUtil;

@WebServlet("/bookingDetails")
public class BookingDetailsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter writer = resp.getWriter();
		RequestDispatcher requestispatcher = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String flightName = req.getSession().getAttribute("selectedFlightName").toString();
		String airline = req.getSession().getAttribute("selectedFlightAirline").toString();
		int price = Integer.parseInt(req.getSession().getAttribute("selectedFlightPrice").toString());
		String source = req.getSession().getAttribute("selectedFlightSource").toString();
		String destination = req.getSession().getAttribute("selectedFlightDestination").toString();
		int totalPassengers = Integer.parseInt(req.getSession().getAttribute("numberOfPass").toString());
		int totalPrice = totalPassengers * price;
		Flight selectedFlight = new Flight(flightName, source, destination, airline, price);
		System.out.println("selectedFlight : " + selectedFlight.toString());
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		int age = Integer.parseInt(req.getParameter("age").isEmpty() ? "0" : req.getParameter("age"));
		String email = req.getParameter("email");
		if (firstname.isEmpty() || lastname.isEmpty() || email.isEmpty() || age == 0) {
			writer = resp.getWriter();
			requestispatcher = req.getRequestDispatcher("userRegistration.jsp");
			requestispatcher.include(req, resp);
			writer.println(
					"<center> <span style='color:green; font-family: cursive; font-weight: bold;'>Enter Valid Details. All fileds are Mandatory</span></center>");
		} else {
			User user = new User(firstname, lastname, age, email);
			session.save(user);
			transaction.commit();
			req.setAttribute("paymenDone", "false");
			req.setAttribute("totalPrice", totalPrice);
			req.setAttribute("totalPassengers", totalPassengers);
			req.setAttribute("passenger", user);
			req.setAttribute("selectedFlight", selectedFlight);
			req.getRequestDispatcher("selectedFlightDetailsAndPayment.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("paymenDone", true);
		String flightName = req.getSession().getAttribute("selectedFlightName").toString();
		String airline = req.getSession().getAttribute("selectedFlightAirline").toString();
		int price = Integer.parseInt(req.getSession().getAttribute("selectedFlightPrice").toString());
		String source = req.getSession().getAttribute("selectedFlightSource").toString();
		String destination = req.getSession().getAttribute("selectedFlightDestination").toString();
		int totalPassengers = Integer.parseInt(req.getSession().getAttribute("numberOfPass").toString());
		int totalPrice = totalPassengers * price;
		Flight selectedFlight = new Flight(flightName, source, destination, airline, price);
		System.out.println("selectedFlight : " + selectedFlight.toString());
		String firstname = (String) req.getSession().getAttribute("firstname");
		System.out.println("firstname : firstname" + firstname);
		String lastname = (String) req.getSession().getAttribute("lastname");
		int age = Integer.parseInt(req.getSession().getAttribute("age").toString());
		String email = (String) req.getSession().getAttribute("email");
		User user = new User(firstname, lastname, age, email);
		System.out.println("user inside do get of Booking ; " + user);
		req.setAttribute("totalPrice", totalPrice);
		req.setAttribute("totalPassengers", totalPassengers);
		req.setAttribute("passenger", user);
		req.setAttribute("selectedFlight", selectedFlight);
		req.getRequestDispatcher("selectedFlightDetailsAndPayment.jsp").forward(req, resp);
	}

}
