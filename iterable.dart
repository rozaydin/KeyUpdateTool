import 'dart:core';
import "package:pointycastle/pointycastle.dart";
import "package:pointycastle/export.dart";

printMenu() {
  print("1. Update key");
  print("2. Exit");
}

void main() {
  const String version = "v0.1";
  // Welcome user
  print("Key Rotate Tool $version");
  print("------------------------");
  printMenu();

  try {
    RSAKeyGeneratorParameters params =
        new RSAKeyGeneratorParameters(new BigInt.from(19), 1024, 80);
    // create rsa key pair

    var rsapars =
        new RSAKeyGeneratorParameters(BigInt.parse("65537"), 2048, 12);
    var params = new ParametersWithRandom(rsapars, rnd);

    var keyGenerator = new KeyGenerator("RSA");
    keyGenerator.init(params);

    AsymmetricKeyPair keypair = keyGenerator.generateKeyPair();
    print(keypair.publicKey);
    print(keypair.privateKey);
  } catch (exc, stacktrace) {
    print(exc);
    print(stacktrace);
  }
}
