
public class OblongTester {

	public static void main(String[] args) {
		// Create oblong
		Oblong one = new Oblong(20, 10);
		// Test get height method
		System.out.println("Oblong one Height: " + one.getHeight());
		System.out.println();

		// Create Extended Oblong
		ExtendedOblong two = new ExtendedOblong(10, 10, '*');
		// Test draw method
		System.out.print(two.draw());
		// Test inherited set height + set length methods
		two.setHeight(5);
		two.setLength(5);
		// Re-test draw with new defined sizes
		System.out.println();
		System.out.print(two.draw());

	}

}
