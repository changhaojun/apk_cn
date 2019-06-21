.class LNativeStorage$13;
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
    .line 309
    iput-object p1, p0, LNativeStorage$13;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$13;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 313
    :try_start_0
    iget-object v3, p0, LNativeStorage$13;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "ref":Ljava/lang/String;
    iget-object v3, p0, LNativeStorage$13;->this$0:LNativeStorage;

    invoke-static {v3}, LNativeStorage;->access$100(LNativeStorage;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "nativestorage_null"

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "s":Ljava/lang/String;
    const-string v3, "nativestorage_null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, LNativeStorage$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(I)V

    .line 323
    .end local v1    # "ref":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 318
    .restart local v1    # "ref":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, LNativeStorage$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v1    # "ref":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Native Storage"

    const-string v4, "getItem failed :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    iget-object v3, p0, LNativeStorage$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
