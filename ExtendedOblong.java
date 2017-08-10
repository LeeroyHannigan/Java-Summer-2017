
public class ExtendedOblong extends Oblong {
	// Instance Variables
	private char symbol;

	// Constructors
	public ExtendedOblong(double lengthIn, double heightIn, char symbolIn) {
		super(lengthIn, heightIn);
		symbol = symbolIn;
	}

	// Methods
	public void setSymbol(char symbolIn) {
		symbol = symbolIn;
	}

	// Draw string of type "symbol" to length and height of oblong
	public String draw() {
		int l, h;
		l = (int) getLength();
		h = (int) getHeight();
		String s = "";
		for (int i = 0; i < h; i++) {
			for (int j = 0; j < l; j++) {
				s = s + symbol;
			}
			s = s + "\n";
		}
		return s;
	}

}
