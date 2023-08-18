package otp;

import java.util.Random;

public class otp2
{
	private static final String ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String DIGITS = "0123456789";

    public static String generateRandomUserId() {
        Random random = new Random();

        StringBuilder userId = new StringBuilder();

        // Generate 2 random alphabetic characters
        for (int i = 0; i < 2; i++) {
            char randomChar = ALPHABET.charAt(random.nextInt(ALPHABET.length()));
            userId.append(randomChar);
        }

        // Generate 3 random digits
        for (int i = 0; i < 3; i++) {
            char randomDigit = DIGITS.charAt(random.nextInt(DIGITS.length()));
            userId.append(randomDigit);
        }

        return userId.toString();
    }
}
