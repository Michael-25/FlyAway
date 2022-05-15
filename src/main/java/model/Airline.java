package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "airlines")
public class Airline {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "airline_name")
	private String airlineName;

	public Airline() {
	}

	public Airline(String airlineName) {
		super();
		this.airlineName = airlineName;
	}

	public Airline(int id, String airlineName) {
		super();
		this.id = id;
		this.airlineName = airlineName;
	}

	public String getAirlineName() {
		return airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Airline [id=" + id + ", airlineName=" + airlineName + "]";
	}

}
