
public class Oblong {
	//Instance Variables
	private double length;
	private double height;

	//Constructors
	public Oblong(double lengthIn, double heightIn) {
		length = lengthIn;
		height = heightIn;
	}
	//Methods
	public void setLength(double lengthIn) {
		length = lengthIn;
	}

	public void setHeight(double heightIn) {
		height = heightIn;
	}

	public double getLength() {
		return length;
	}

	public double getHeight() {
		return height;
	}
	//Returns area of oblong
	public double calculateAres() {
		return length * height;
	}
	//Returns perimeter of oblong
	public double calculatePerm() {
		return 2 * (length + height);
	}
}
