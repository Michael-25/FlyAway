package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "flightdetails")
public class Flight {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "flight_name")
	private String flightName;

	@Column(name = "source")
	private String source;

	@Column(name = "destination")
	private String destination;

	@Column(name = "airline_name")
	private String airline;

	private int price;

	public Flight() {
	}

	public Flight(String flightName, String source, String destination, String airline, int price) {
		super();
		this.flightName = flightName;
		this.source = source;
		this.destination = destination;
		this.airline = airline;
		this.price = price;
	}

	public Flight(int id, String flightName, String source, String destination, String airline, int price) {
		super();
		this.id = id;
		this.flightName = flightName;
		this.source = source;
		this.destination = destination;
		this.airline = airline;
		this.price = price;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Flight [id=" + id + ", flightName=" + flightName + ", source=" + source + ", destination=" + destination
				+ ", airline=" + airline + ", price=" + price + "]";
	}

}
