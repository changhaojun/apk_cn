.class LNativeStorage$14;
.super Ljava/lang/Object;
.source "NativeStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNativeStorage;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LNativeStorage;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(LNativeStorage;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # LNativeStorage;

    .prologue
    .line 329
    iput-object p1, p0, LNativeStorage$14;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$14;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 333
    :try_start_0
    iget-object v5, p0, LNativeStorage$14;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "ref":Ljava/lang/String;
    iget-object v5, p0, LNativeStorage$14;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "pwd":Ljava/lang/String;
    iget-object v5, p0, LNativeStorage$14;->this$0:LNativeStorage;

    invoke-static {v5}, LNativeStorage;->access$100(LNativeStorage;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "nativestorage_null"

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "ciphertext":Ljava/lang/String;
    const-string v5, "nativestorage_null"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    .end local v0    # "ciphertext":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "ref":Ljava/lang/String;
    :goto_0
    return-void

    .line 341
    .restart local v0    # "ciphertext":Ljava/lang/String;
    .restart local v3    # "pwd":Ljava/lang/String;
    .restart local v4    # "ref":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v0, v3}, LCrypto;->decryptPbkdf2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "plaintext":Ljava/lang/String;
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 343
    .end local v2    # "plaintext":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    :try_start_2
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .line 345
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 369
    .end local v0    # "ciphertext":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "ref":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Native Storage"

    const-string v6, "getItem failed :"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ciphertext":Ljava/lang/String;
    .restart local v3    # "pwd":Ljava/lang/String;
    .restart local v4    # "ref":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 347
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 348
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .line 350
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 351
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v1

    .line 353
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 354
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_5
    move-exception v1

    .line 356
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 357
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_6
    move-exception v1

    .line 359
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 360
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_7
    move-exception v1

    .line 362
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 363
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_8
    move-exception v1

    .line 365
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 366
    iget-object v5, p0, LNativeStorage$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
