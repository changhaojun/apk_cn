.class LNativeStorage$1;
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
    .line 45
    iput-object p1, p0, LNativeStorage$1;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$1;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    iget-object v3, p0, LNativeStorage$1;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "ref":Ljava/lang/String;
    iget-object v3, p0, LNativeStorage$1;->this$0:LNativeStorage;

    invoke-static {v3}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v3, p0, LNativeStorage$1;->this$0:LNativeStorage;

    invoke-static {v3}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 51
    .local v2, "success":Z
    if-eqz v2, :cond_0

    iget-object v3, p0, LNativeStorage$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 57
    .end local v1    # "ref":Ljava/lang/String;
    .end local v2    # "success":Z
    :goto_0
    return-void

    .line 52
    .restart local v1    # "ref":Ljava/lang/String;
    .restart local v2    # "success":Z
    :cond_0
    iget-object v3, p0, LNativeStorage$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v4, "Remove operation failed"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v1    # "ref":Ljava/lang/String;
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Native Storage"

    const-string v4, "Removing failed :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    iget-object v3, p0, LNativeStorage$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
