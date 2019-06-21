.class public LCrypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static DELIMITER:Ljava/lang/String; = null

.field private static ITERATION_COUNT:I = 0x0

.field private static KEY_LENGTH:I = 0x0

.field public static final PBKDF2_DERIVATION_ALGORITHM:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final PKCS5_SALT_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field private static random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, LCrypto;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LCrypto;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "@~@~@"

    sput-object v0, LCrypto;->DELIMITER:Ljava/lang/String;

    .line 31
    const/16 v0, 0x100

    sput v0, LCrypto;->KEY_LENGTH:I

    .line 32
    const/16 v0, 0x2710

    sput v0, LCrypto;->ITERATION_COUNT:I

    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, LCrypto;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BLjavax/crypto/SecretKey;[B)Ljava/lang/String;
    .locals 6
    .param p0, "cipherBytes"    # [B
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 109
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 110
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 111
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    sget-object v3, LCrypto;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cipher IV: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    invoke-static {v5}, LCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 115
    .local v2, "plaintext":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public static decryptPbkdf2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "ciphertext"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v5, LCrypto;->DELIMITER:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "fields":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 121
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid encypted text format"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, LCrypto;->fromBase64(Ljava/lang/String;)[B

    move-result-object v4

    .line 125
    .local v4, "salt":[B
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, LCrypto;->fromBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 126
    .local v2, "iv":[B
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, LCrypto;->fromBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 127
    .local v0, "cipherBytes":[B
    invoke-static {v4, p1}, LCrypto;->deriveKeyPbkdf2([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 129
    .local v3, "key":Ljavax/crypto/SecretKey;
    invoke-static {v0, v3, v2}, LCrypto;->decrypt([BLjavax/crypto/SecretKey;[B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static deriveKeyPbkdf2([BLjava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 13
    .param p0, "salt"    # [B
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 40
    .local v6, "start":J
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    sget v9, LCrypto;->ITERATION_COUNT:I

    sget v10, LCrypto;->KEY_LENGTH:I

    invoke-direct {v4, v8, p0, v9, v10}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 42
    .local v4, "keySpec":Ljava/security/spec/KeySpec;
    const-string v8, "PBKDF2WithHmacSHA1"

    .line 43
    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 44
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 45
    .local v2, "keyBytes":[B
    sget-object v8, LCrypto;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key bytes: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, LCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v5, v2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 48
    .local v5, "result":Ljavax/crypto/SecretKey;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 49
    .local v0, "elapsed":J
    sget-object v8, LCrypto;->TAG:Ljava/lang/String;

    const-string v9, "PBKDF2 key derivation took %d [ms]."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 49
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object v5
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "plaintext"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 71
    invoke-static {}, LCrypto;->generateSalt()[B

    move-result-object v5

    .line 72
    .local v5, "salt":[B
    invoke-static {v5, p1}, LCrypto;->deriveKeyPbkdf2([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 73
    .local v4, "key":Ljavax/crypto/SecretKey;
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 74
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    invoke-static {v6}, LCrypto;->generateIv(I)[B

    move-result-object v2

    .line 75
    .local v2, "iv":[B
    sget-object v6, LCrypto;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IV: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, LCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 77
    .local v3, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, v9, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    sget-object v7, LCrypto;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cipher IV: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 82
    .local v1, "cipherText":[B
    if-eqz v5, :cond_1

    .line 83
    const-string v6, "%s%s%s%s%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, LCrypto;->toBase64([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    sget-object v8, LCrypto;->DELIMITER:Ljava/lang/String;

    aput-object v8, v7, v9

    .line 84
    invoke-static {v2}, LCrypto;->toBase64([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    sget-object v8, LCrypto;->DELIMITER:Ljava/lang/String;

    aput-object v8, v7, v12

    const/4 v8, 0x4

    invoke-static {v1}, LCrypto;->toBase64([B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 83
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 87
    :goto_1
    return-object v6

    .line 79
    .end local v1    # "cipherText":[B
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    invoke-static {v6}, LCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 87
    .restart local v1    # "cipherText":[B
    :cond_1
    const-string v6, "%s%s%s"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2}, LCrypto;->toBase64([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    sget-object v8, LCrypto;->DELIMITER:Ljava/lang/String;

    aput-object v8, v7, v9

    .line 88
    invoke-static {v1}, LCrypto;->toBase64([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 87
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static fromBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateIv(I)[B
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 57
    new-array v0, p0, [B

    .line 58
    .local v0, "b":[B
    sget-object v1, LCrypto;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 60
    return-object v0
.end method

.method public static generateSalt()[B
    .locals 2

    .prologue
    .line 64
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 65
    .local v0, "b":[B
    sget-object v1, LCrypto;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 67
    return-object v0
.end method

.method public static toBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 101
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v1, "buff":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    .line 94
    .local v0, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
