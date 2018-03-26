Imports System.Security.Cryptography
Imports System.IO
Imports System.Text
Imports System.Data
Public Class CryptoSecurity
    Public Shared Function Encrypt(ByVal Data As String) As String
        Dim myRijndael As New RijndaelManaged
        Dim toEncrypt() As Byte
        Dim Encrypted() As Byte
        Dim Converter As New System.Text.ASCIIEncoding

        'Define Sercret Key and Initialisation Vector (IV) for Encryption
        Dim Key As Byte() = {&H1, &H2, &H3, &H4, &H5, &H6, &H7, &H8, &H9, &H10, &H11, &H12, &H13, &H14, &H15, &H16}
        Dim IV As Byte() = {&H12, &H22, &H32, &H42, &H52, &H62, &H72, &H82, &H92, &H21, &HA2, &HB2, &HC2, &HD2, &HE2, &HF2}

        'Get an encryptor.
        Dim encryptor As ICryptoTransform = myRijndael.CreateEncryptor(Key, IV)

        'Encrypt the data.
        Dim msEncrypt As New IO.MemoryStream
        Dim csEncrypt As New CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write)

        'Convert the data to a byte array.
        toEncrypt = Converter.GetBytes(Data)

        'Write all data to the crypto stream and flush it.
        csEncrypt.Write(toEncrypt, 0, toEncrypt.Length)
        csEncrypt.FlushFinalBlock()

        'Get encrypted array of bytes.
        Encrypted = msEncrypt.ToArray()
        'Return Converter.GetString(Encrypted)
        Return Convert.ToBase64String(Encrypted)
    End Function

    Public Shared Function Decrypt(ByVal Data As String) As String
        Dim myRijndael As New RijndaelManaged
        Dim Converter As New System.Text.ASCIIEncoding
        Dim Encrypted() As Byte
        Dim Decrypted() As Byte

        'Key & IV should be same as used at encryption
        Dim Key As Byte() = {&H1, &H2, &H3, &H4, &H5, &H6, &H7, &H8, &H9, &H10, &H11, &H12, &H13, &H14, &H15, &H16}
        Dim IV As Byte() = {&H12, &H22, &H32, &H42, &H52, &H62, &H72, &H82, &H92, &H21, &HA2, &HB2, &HC2, &HD2, &HE2, &HF2}

        'Get a decryptor that uses the same key and IV as the encryptor.
        Dim decryptor As ICryptoTransform = myRijndael.CreateDecryptor(Key, IV)
        Encrypted = Convert.FromBase64String(Data)

        'Now decrypt the previously encrypted message using the decryptor
        'obtained in the above step.
        Dim msDecrypt As New IO.MemoryStream(Encrypted)
        Dim csDecrypt As New CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read)

        Decrypted = New Byte(Encrypted.Length) {}

        'Read the data out of the crypto stream.
        csDecrypt.Read(Decrypted, 0, Decrypted.Length)

        'Convert the byte array back into a string.
        Return Converter.GetString(Decrypted)

    End Function
End Class
