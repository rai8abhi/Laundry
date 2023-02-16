// import 'dart:math';
//
// void main() {
//   String message = "This is a message";
//
//   var p = getPrimeNumber();
//   var q = getPrimeNumber();
//   var n = p * q;
//   var phi = (p - 1) * (q - 1);
//   var e = getPublicKey(phi);
//   var d = getPrivateKey(e, phi);
//
//   var encrypted = encrypt(message, e, n);
//   var decrypted = decrypt(encrypted, d, n);
//
//   print("Original message: $message");
//   print("Encrypted message: $encrypted");
//   print("Decrypted message: $decrypted");
// }
//
// int getPrimeNumber() {
//   var random = Random();
//   var number = random.nextInt(1000) + 100;
//   while (!isPrime(number)) {
//     number = random.nextInt(1000) + 100;
//   }
//   return number;
// }
//
// bool isPrime(int number) {
//   if (number <= 1) return false;
//   for (var i = 2; i <= sqrt(number).floor(); i++) {
//     if (number % i == 0) return false;
//   }
//   return true;
// }
//
// int getPublicKey(int phi) {
//   var random = Random();
//   var e = random.nextInt(phi - 1) + 1;
//   while (gcd(e, phi) != 1) {
//     e = random.nextInt(phi - 1) + 1;
//   }
//   return e;
// }
//
// int getPrivateKey(int e, int phi) {
//   int k = 1;
//   while (((k * phi + 1) % e) != 0) {
//     k++;
//   }
//   return ((k * phi + 1) / e).floor();
// }
//
// int gcd(int a, int b) {
//   if (b == 0) return a;
//   return gcd(b, a % b);
// }
//
// List<int> encrypt(String message, int e, int n) {
//   List<int> encrypted = [];
//   for (var i = 0; i < message.length; i++) {
//     var m = message.codeUnitAt(i);
//     var c = (pow(m, e) % n).floor();
//     encrypted.add(c);
//   }
//   return encrypted;
// }
//
// String decrypt(List<int> encrypted, int d, int n) {
//   String decrypted = '';
//   for (var i = 0; i < encrypted.length; i++) {
//     var c = encrypted[i];
//     var m = (pow(c, d) % n).floor();
//     decrypted += String.fromCharCode(m);
//   }
//   return decrypted;
// }
