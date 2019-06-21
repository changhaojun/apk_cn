.class LNativeStorage$6;
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
    .line 138
    iput-object p1, p0, LNativeStorage$6;->this$0:LNativeStorage;

    iput-object p2, p0, LNativeStorage$6;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, LNativeStorage$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 142
    :try_start_0
    iget-object v3, p0, LNativeStorage$6;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "ref":Ljava/lang/String;
    iget-object v3, p0, LNativeStorage$6;->this$0:LNativeStorage;

    invoke-static {v3}, LNativeStorage;->access$100(LNativeStorage;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, "anInt":I
    iget-object v3, p0, LNativeStorage$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "anInt":I
    .end local v2    # "ref":Ljava/lang/String;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Native Storage"

    const-string v4, "GetInt failed :"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    iget-object v3, p0, LNativeStorage$6;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
