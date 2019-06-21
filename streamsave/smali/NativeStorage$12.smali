.class LNativeStorage$12;
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
    .line 253
    iput-object p1, p0, LNativeStorage$12;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$12;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 257
    :try_start_0
    iget-object v6, p0, LNativeStorage$12;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "ref":Ljava/lang/String;
    iget-object v6, p0, LNativeStorage$12;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "aString":Ljava/lang/String;
    iget-object v6, p0, LNativeStorage$12;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "pwd":Ljava/lang/String;
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    .local v1, "ciphertext":Ljava/lang/String;
    :try_start_1
    invoke-static {v0, v3}, LCrypto;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

    move-result-object v1

    .line 289
    :goto_0
    :try_start_2
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 290
    iget-object v6, p0, LNativeStorage$12;->this$0:LNativeStorage;

    invoke-static {v6}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    iget-object v6, p0, LNativeStorage$12;->this$0:LNativeStorage;

    invoke-static {v6}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    .line 292
    .local v5, "success":Z
    if-eqz v5, :cond_0

    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v6, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 303
    .end local v0    # "aString":Ljava/lang/String;
    .end local v1    # "ciphertext":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "ref":Ljava/lang/String;
    .end local v5    # "success":Z
    :goto_1
    return-void

    .line 264
    .restart local v0    # "aString":Ljava/lang/String;
    .restart local v1    # "ciphertext":Ljava/lang/String;
    .restart local v3    # "pwd":Ljava/lang/String;
    .restart local v4    # "ref":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .line 266
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 298
    .end local v0    # "aString":Ljava/lang/String;
    .end local v1    # "ciphertext":Ljava/lang/String;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "ref":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Native Storage"

    const-string v7, "setItem :"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "aString":Ljava/lang/String;
    .restart local v1    # "ciphertext":Ljava/lang/String;
    .restart local v3    # "pwd":Ljava/lang/String;
    .restart local v4    # "ref":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 268
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_3
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 269
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v2

    .line 271
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 272
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v2

    .line 274
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 275
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_5
    move-exception v2

    .line 277
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 278
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_6
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 281
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_7
    move-exception v2

    .line 283
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 284
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_8
    move-exception v2

    .line 286
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 287
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v5    # "success":Z
    :cond_0
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto/16 :goto_1

    .line 295
    .end local v5    # "success":Z
    :cond_1
    iget-object v6, p0, LNativeStorage$12;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v7, "Encryption failed"

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
