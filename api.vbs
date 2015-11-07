Imports System.Security.Cryptography
Imports System.Text
 
Namespace BpjsIntegration
    Class Program
 
        Private Shared Sub Main()
            Dim data = "testtesttest"
            Dim secretKey = "secretkey"
 
            ' Initialize the keyed hash object using the secret key as the key
            Dim hashObject As New HMACSHA256(Encoding.UTF8.GetBytes(secretKey))
 
            ' Computes the signature by hashing the salt with the secret key as the key
            Dim signature = hashObject.ComputeHash(Encoding.UTF8.GetBytes(data))
 
            ' Base 64 Encode
            Dim encodedSignature = Convert.ToBase64String(signature)
            ' URLEncode
            ' encodedSignature = System.Web.HttpUtility.UrlEncode(encodedSignature)
 
            Console.WriteLine("Voila! A signature: " & encodedSignature)
 
            Console.ReadKey()
 
        End Sub
    End Class
End Namespace