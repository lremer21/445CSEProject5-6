using System;
using System.Security.Cryptography;
using System.Text;

namespace SecurityLibrary
{
    public static class PasswordHasher
    {
        public static string HashPassword(string input)
        {
            if (input == null) input = "";

            using (SHA256 sha = SHA256.Create())
            {
                //convert string into bytes, run SHA-256 algorithm on those bytes
                //SHA256 does not understand text. it only understands raw binary data
                byte[] bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(input));

                string result = "";

                foreach (byte b in bytes)
                {
                    result += b.ToString("x2"); //converts a byte into a 2-character hexadecimal string
                }

                return result;
            }
        }

        public static bool VerifyPassword(string plainTextPassword, string storedHash)
        {
            string computed = HashPassword(plainTextPassword);

            //ignore case between hashes (ab12ff is the same as AB12FF)
            return string.Equals(computed, storedHash, StringComparison.OrdinalIgnoreCase);
        }
    }
}
