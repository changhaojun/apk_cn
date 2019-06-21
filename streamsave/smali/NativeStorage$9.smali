.class LNativeStorage$9;
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
    .line 195
    iput-object p1, p0, LNativeStorage$9;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$9;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 199
    :try_start_0
    iget-object v4, p0, LNativeStorage$9;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "ref":Ljava/lang/String;
    iget-object v4, p0, LNativeStorage$9;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "aString":Ljava/lang/String;
    iget-object v4, p0, LNativeStorage$9;->this$0:LNativeStorage;

    invoke-static {v4}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object v4, p0, LNativeStorage$9;->this$0:LNativeStorage;

    invoke-static {v4}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 203
    .local v3, "success":Z
    if-eqz v3, :cond_0

    iget-object v4, p0, LNativeStorage$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 209
    .end local v0    # "aString":Ljava/lang/String;
    .end local v2    # "ref":Ljava/lang/String;
    .end local v3    # "success":Z
    :goto_0
    return-void

    .line 204
    .restart local v0    # "aString":Ljava/lang/String;
    .restart local v2    # "ref":Ljava/lang/String;
    .restart local v3    # "success":Z
    :cond_0
    iget-object v4, p0, LNativeStorage$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v5, "Write failed"

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0    # "aString":Ljava/lang/String;
    .end local v2    # "ref":Ljava/lang/String;
    .end local v3    # "success":Z
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Native Storage"

    const-string v5, "PutString failed :"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    iget-object v4, p0, LNativeStorage$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
