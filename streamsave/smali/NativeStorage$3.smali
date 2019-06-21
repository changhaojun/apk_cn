.class LNativeStorage$3;
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
    .line 80
    iput-object p1, p0, LNativeStorage$3;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$3;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 84
    :try_start_0
    iget-object v4, p0, LNativeStorage$3;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "ref":Ljava/lang/String;
    iget-object v4, p0, LNativeStorage$3;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    .local v0, "bool":Ljava/lang/Boolean;
    iget-object v4, p0, LNativeStorage$3;->this$0:LNativeStorage;

    invoke-static {v4}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v4, p0, LNativeStorage$3;->this$0:LNativeStorage;

    invoke-static {v4}, LNativeStorage;->access$000(LNativeStorage;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 88
    .local v3, "success":Z
    if-eqz v3, :cond_0

    iget-object v4, p0, LNativeStorage$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 94
    .end local v0    # "bool":Ljava/lang/Boolean;
    .end local v2    # "ref":Ljava/lang/String;
    .end local v3    # "success":Z
    :goto_0
    return-void

    .line 89
    .restart local v0    # "bool":Ljava/lang/Boolean;
    .restart local v2    # "ref":Ljava/lang/String;
    .restart local v3    # "success":Z
    :cond_0
    iget-object v4, p0, LNativeStorage$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v5, "Write failed"

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "bool":Ljava/lang/Boolean;
    .end local v2    # "ref":Ljava/lang/String;
    .end local v3    # "success":Z
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Native Storage"

    const-string v5, "PutBoolean failed :"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    iget-object v4, p0, LNativeStorage$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
