# Dynamic-OpenSSL-iOS

## Getting started

1. Directly drag **openssl.xcodeproj** from the **src** folder to your iOS project
2. your project => target(your app) => Embedded Binaries => Add **openssl.framework**

## Build by yourself

1. Download **tar.gz** from  [Official website](https://www.openssl.org/source/)
2. Modify the **OPENSSL_COMPRESSED_FN** parameter in the **build-openssl.sh** file so that it has the same name as the file you downloaded . For example :`OPENSSL_COMPRESSED_FN="openssl-1.1.1-pre8.tar.gz"`
3. The OpenSSL source code and the script are placed in the same directory, the terminal enters, and the compilation is performed.

```
$ cd .../OpenSSL-for-iPhone-master

$ ./build-libssl.sh
```

>This is a script from <https://www.jianshu.com/p/651513cab181'>
