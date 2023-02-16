
import 'dart:math';

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:encrypt/encrypt_io.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class EncryptionController extends GetxController {

  RxString? userName = ''.obs;
  RxString? password = ''.obs;
  // RxString? encryptedBytes = ''.obs;
  // RxString? encryptedBase16 = ''.obs;
  // RxString? encryptedBase64 = ''.obs;
  RxString? decryptedText = ''.obs;
  RxString? userNameEncryptedBase16 = ''.obs;
  RxString? userNameEncryptedBase64 = ''.obs;
  RxString? passwordEncryptedBase16 = ''.obs;
  RxString? passwordEncryptedBase64 = ''.obs;
  RxString? userEncryptedTest = ''.obs;




  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
      final prefs = await SharedPreferences.getInstance();
    userName?.value = prefs.getString('userName')!;
    password?.value = prefs.getString('password')!;
    userEncryptedTest?.value = prefs.getString('userNameEncryptValue')!;
    // await encryptionAES();
    // await encryptionRSA();
    encryptUserID();
    }

  @override
  void onClose() {
    super.onClose();
  }

  encryptUserID(){
    encrypt.Encrypted encrypted;
    encrypted = encryptionRSA( userName?.value) as encrypt.Encrypted;
    userNameEncryptedBase16?.value = encrypted.base16;
    userNameEncryptedBase64?.value = encrypted.base64;


    print('\nEncryptUserID');
    print(userNameEncryptedBase16?.value);
    print(userNameEncryptedBase64?.value);

  }
  encryptPassword(){
    encrypt.Encrypted encrypted;
    encrypted = encryptionRSA( password?.value) as encrypt.Encrypted;
    passwordEncryptedBase16?.value = encrypted.base16;
    passwordEncryptedBase64?.value = encrypted.base64;


    print('\nEncryptPassword');
    print( passwordEncryptedBase16?.value);
    print(passwordEncryptedBase64?.value);

  }

  encryptionRSA(String? encryptText) async {
    // final publicKey = await parseKeyFromFile<RSAPublicKey>('assets/public.pem');
    // final privKey = await parseKeyFromFile<RSAPrivateKey>('assets/private.pem');
    final publicPem = await rootBundle.loadString('assets/public.pem');
    dynamic  publicKey = encrypt.RSAKeyParser().parse(publicPem);
    final privatePem = await rootBundle.loadString('assets/private.pem');
    dynamic  privKey = encrypt.RSAKeyParser().parse(privatePem);
    final plainText = userName?.value;
    encrypt.Encrypter encryption;
    encrypt.Encrypted encrypted;


    String decrypted;
    encryption = encrypt.Encrypter(
        encrypt.RSA(
          publicKey: publicKey,
          privateKey: privKey,
          encoding: encrypt.RSAEncoding.OAEP
        )
    );
    encrypted = encryption.encrypt(plainText!);
    decryptedText?.value = encryption.decrypt(encrypted);

    return encrypted;
  }

  encryptionAES(String encryptText) async {
    // print("this is the user name and password ${userName?.value} and ${password?.value}");

      final plainText = encryptText;
      const key = "This 32 char key have 256 bits..";

      encrypt.Encrypted encrypted = encryptWithAES(key, plainText);

    //Decrypt
    decryptedText?.value = decryptWithAES(key, encrypted);
    print('Decrypted data: $decryptedText');

    return encrypted;
  }



  encrypt.Encrypted encryptWithAES(String key, String plainText) {
    final cipherKey = encrypt.Key.fromUtf8(key);
    final encryptService = encrypt.Encrypter(encrypt.AES(cipherKey, mode: encrypt.AESMode.cbc));
    final initVector = encrypt.IV.fromUtf8(key.substring(0, 16)); //Here the IV is generated from key. This is for example only. Use some other text or random data as IV for better security.

    encrypt.Encrypted encryptedData = encryptService.encrypt(plainText, iv: initVector);
    return encryptedData;
  }


  String decryptWithAES(String key, encrypt.Encrypted encryptedData) {
    final cipherKey = encrypt.Key.fromUtf8(key);
    final encryptService = encrypt.Encrypter(encrypt.AES(cipherKey, mode: encrypt.AESMode.cbc)); //Using AES CBC encryption
    final initVector = encrypt.IV.fromUtf8(key.substring(0, 16)); //Here the IV is generated from key. This is for example only. Use some other text or random data as IV for better security.

    return encryptService.decrypt(encryptedData, iv: initVector);
  }


  // gcd(double a, double h)
  // {
  //   /*
	// 	* This function returns the gcd or greatest common
	// 	* divisor
	// 	*/
  //   double temp;
  //   while (true) {
  //     temp = a % h;
  //     if (temp == 0) {
  //       return h;
  //     }
  //     a = h;
  //     h = temp;
  //   }
  // }
  //
  // rsf(double args)
  // {
  //   double p = 3;
  //   double q = 7;
  //
  //   // Stores the first part of public key:
  //   double n = p * q;
  //
  //   // Finding the other part of public key.
  //   // double e stands for encrypt
  //   double e = 2;
  //   double phi = (p - 1) * (q - 1);
  //   while (e < phi) {
  //     /*
	// 		* e must be co-prime to phi and
	// 		* smaller than phi.
	// 		*/
  //     if (gcd(e, phi) == 1)
  //       break;
  //     else {
  //       e++;
  //     }
  //   }
  //   int k = 2; // A constant value
  //   double d = (1 + (k * phi)) / e;
  //
  //   // Message to be encrypted
  //   double msg = args;
  //
  //   print("Message data = $msg");
  //
  //   // Encryption c = (msg ^ e) % n
  //   num c = pow(msg, e);
  //   c = c % n;
  //   print("Encrypted data = $c");
  //
  //   // Decryption m = (c ^ d) % n
  //   // double m = Math.pow(c, d);
  //   num m = pow(c, d);
  //   m = m % n;
  //   print("Original Message Sent = $m");
  //   return c;
  // }

}
