// import 'dart:math';
//
// void main() {
//   String message = 'Abhishek';
//
//   //Generate two random prime numbers
//   int p = generateRandomPrime();
//   int q = generateRandomPrime();
//
//   //Compute n = p * q
//   int n = p * q;
//
//   //Compute φ(n) = (p - 1) * (q - 1)
//   int phiN = (p - 1) * (q - 1);
//
//   //Choose an integer e such that 1 < e < φ(n) and e is coprime to φ(n)
//   int e = generatePublicKey(phiN);
//
//   //Compute the secret key d such that (d * e) % φ(n) = 1
//   int d = generatePrivateKey(phiN, e);
//
//   //Encrypt the message
//   List<int> encryptedMessage = encrypt(message.codeUnits, e, n);
//
//   //Decrypt the message
//   List<int> decryptedMessage = decrypt(encryptedMessage, d, n);
//
//   print('Original message: $message');
//   print('Encrypted message: ${String.fromCharCodes(encryptedMessage)}');
//   print('Decrypted message: ${String.fromCharCodes(decryptedMessage)}');
// }
//
// int generateRandomPrime() {
//   Random random = Random();
//   int randomNumber = random.nextInt(100);
//   while (!isPrime(randomNumber)) {
//     randomNumber = random.nextInt(100);
//   }
//   return randomNumber;
// }
//
// bool isPrime(int number) {
//   if (number <= 1) return false;
//   for (int i = 2; i <= sqrt(number).toInt(); i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }
//
// int generatePublicKey(int phiN) {
//   Random random = Random();
//   int e = random.nextInt(phiN - 1) + 1;
//   while (gcd(e, phiN) != 1) {
//     e = random.nextInt(phiN - 1) + 1;
//   }
//   return e;
// }
//
// int gcd(int a, int b) {
//   if (b == 0) return a;
//   return gcd(b, a % b);
// }
//
// int generatePrivateKey(int phiN, int e) {
//   int d = 1;
//   while ((d * e) % phiN != 1) {
//     d++;
//   }
//   return d;
// }
//
// List<int> encrypt(List<int> message, int e, int n) {
//   List<int> encryptedMessage = [];
//   for (int i = 0; i < message.length; i++) {
//     encryptedMessage.add((message[i] ^ e) % n);
//   }
//   return encryptedMessage;
// }
//
// List<int> decrypt(List<int> encryptedMessage, int d, int n) {
//   List<int> decryptedMessage = [];
//   for (int i = 0; i < encryptedMessage.length; i++) {
//     decryptedMessage.add((encryptedMessage[i] ^ d) % n);
//   }
//   return decryptedMessage;
// }
