namespace BpjsIntegration
{
    class Program
    {
 
        static void Main()
        {
            var data = "testtesttest";
            var secretKey = "secretkey";
 
            // Initialize the keyed hash object using the secret key as the key
            HMACSHA256 hashObject = new HMACSHA256(Encoding.UTF8.GetBytes(secretKey));
 
            // Computes the signature by hashing the salt with the secret key as the key
            var signature = hashObject.ComputeHash(Encoding.UTF8.GetBytes(data));
 
            // Base 64 Encode
            var encodedSignature = Convert.ToBase64String(signature);
 
            // URLEncode
            // encodedSignature = System.Web.HttpUtility.UrlEncode(encodedSignature);
 
            Console.WriteLine("Voila! A signature: " + encodedSignature);
 
            Console.ReadKey();
 
        }
    }
}