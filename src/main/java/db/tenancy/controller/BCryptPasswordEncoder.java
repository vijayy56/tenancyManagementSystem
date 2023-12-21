package db.tenancy.controller;
import org.springframework.security.crypto.bcrypt.BCrypt;


import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import java.security.spec.KeySpec;
import java.util.Base64;

public class BCryptPasswordEncoder {


    public String encode(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(12));
    }

    public boolean matches(String password, String user_pass) {
        return false;
    }

    public static String encrypt(String plaintext, String secretKey) throws Exception {
        // Generate a random initialization vector (IV)
        byte[] iv = new byte[16];
        // You should use a secure random generator to generate the IV
        // This example uses a simple method for demonstration purposes only
        // Do not use this approach in production code
        System.arraycopy(secretKey.getBytes(), 0, iv, 0, Math.min(secretKey.length(), 16));

        // Create SecretKey using a key derivation function
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
        KeySpec spec = new PBEKeySpec(secretKey.toCharArray(), iv, 65536, 256);
        SecretKey tmp = factory.generateSecret(spec);
        SecretKey secret = new SecretKeySpec(tmp.getEncoded(), "AES");

        // Initialize the cipher with AES/CBC/PKCS5Padding
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(Cipher.ENCRYPT_MODE, secret, new IvParameterSpec(iv));

        // Encrypt the plaintext
        byte[] encrypted = cipher.doFinal(plaintext.getBytes("UTF-8"));

        // Encode the encrypted bytes to Base64 for storage or transmission
        return Base64.getEncoder().encodeToString(encrypted);
    }

    public static String decrypt(String ciphertext, String secretKey) throws Exception {
        // Decode the Base64-encoded ciphertext
        byte[] encrypted = Base64.getDecoder().decode(ciphertext);

        // Generate IV
        byte[] iv = new byte[16];
        System.arraycopy(secretKey.getBytes(), 0, iv, 0, Math.min(secretKey.length(), 16));

        // Create SecretKey using a key derivation function
        SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
        KeySpec spec = new PBEKeySpec(secretKey.toCharArray(), iv, 65536, 256);
        SecretKey tmp = factory.generateSecret(spec);
        SecretKey secret = new SecretKeySpec(tmp.getEncoded(), "AES");

        // Initialize the cipher with AES/CBC/PKCS5Padding
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(Cipher.DECRYPT_MODE, secret, new IvParameterSpec(iv));

        // Decrypt the ciphertext
        byte[] decrypted = cipher.doFinal(encrypted);

        // Convert the decrypted bytes to a string
        return new String(decrypted, "UTF-8");
    }


}
