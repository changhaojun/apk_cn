.class public Lcom/ionicframework/cordova/webview/IonicWebViewEngine;
.super Lorg/apache/cordova/engine/SystemWebViewEngine;
.source "IonicWebViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;
    }
.end annotation


# static fields
.field private static final LAST_BINARY_VERSION_CODE:Ljava/lang/String; = "lastBinaryVersionCode"

.field private static final LAST_BINARY_VERSION_NAME:Ljava/lang/String; = "lastBinaryVersionName"

.field public static final TAG:Ljava/lang/String; = "IonicWebViewEngine"


# instance fields
.field private CDV_LOCAL_SERVER:Ljava/lang/String;

.field private localServer:Lcom/ionicframework/cordova/webview/WebViewLocalServer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 41
    new-instance v0, Lorg/apache/cordova/engine/SystemWebView;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    .line 42
    const-string v0, "IonicWebViewEngine"

    const-string v1, "Ionic Web View Engine Starting Right Up 1..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;)V
    .locals 2
    .param p1, "webView"    # Lorg/apache/cordova/engine/SystemWebView;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    .line 47
    const-string v0, "IonicWebViewEngine"

    const-string v1, "Ionic Web View Engine Starting Right Up 2..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 2
    .param p1, "webView"    # Lorg/apache/cordova/engine/SystemWebView;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/CordovaPreferences;)V

    .line 52
    const-string v0, "IonicWebViewEngine"

    const-string v1, "Ionic Web View Engine Starting Right Up 3..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Lcom/ionicframework/cordova/webview/WebViewLocalServer;
    .locals 1
    .param p0, "x0"    # Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->localServer:Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->CDV_LOCAL_SERVER:Ljava/lang/String;

    return-object v0
.end method

.method private isDeployDisabled()Z
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "DisableDeploy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNewBinary()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 85
    const-string v6, ""

    .line 86
    .local v6, "versionCode":Ljava/lang/String;
    const-string v7, ""

    .line 87
    .local v7, "versionName":Ljava/lang/String;
    iget-object v9, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "WebViewSettings"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 88
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "lastBinaryVersionCode"

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "lastVersionCode":Ljava/lang/String;
    const-string v9, "lastBinaryVersionName"

    invoke-interface {v5, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "lastVersionName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 93
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 100
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "lastBinaryVersionCode"

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v8, "lastBinaryVersionName"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v8, "serverBasePath"

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    const/4 v8, 0x1

    .line 107
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return v8

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/Exception;
    const-string v9, "IonicWebViewEngine"

    const-string v10, "Unable to get package info"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getServerBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->localServer:Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    invoke-virtual {v0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->getBasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 10
    .param p1, "parentWebView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "client"    # Lorg/apache/cordova/CordovaWebViewEngine$Client;
    .param p4, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;
    .param p5, "pluginManager"    # Lorg/apache/cordova/PluginManager;
    .param p6, "nativeToJsMessageQueue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 59
    new-instance v4, Lorg/apache/cordova/ConfigXmlParser;

    invoke-direct {v4}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    .line 60
    .local v4, "parser":Lorg/apache/cordova/ConfigXmlParser;
    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/ConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "Hostname"

    const-string v3, "localhost"

    invoke-virtual {v0, v1, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "hostname":Ljava/lang/String;
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "Scheme"

    const-string v3, "http"

    invoke-virtual {v0, v1, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "scheme":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->CDV_LOCAL_SERVER:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;-><init>(Landroid/content/Context;Ljava/lang/String;ZLorg/apache/cordova/ConfigXmlParser;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->localServer:Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    .line 67
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->localServer:Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    const-string v1, "www"

    invoke-virtual {v0, v1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->hostAssets(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    new-instance v1, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;

    invoke-direct {v1, p0, p0, v4}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;-><init>(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/ConfigXmlParser;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    invoke-super/range {p0 .. p6}, Lorg/apache/cordova/engine/SystemWebViewEngine;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 74
    .local v9, "settings":Landroid/webkit/WebSettings;
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "MixedContentMode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v6

    .line 75
    .local v6, "mode":I
    invoke-virtual {v9, v6}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 77
    .end local v6    # "mode":I
    .end local v9    # "settings":Landroid/webkit/WebSettings;
    :cond_0
    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 78
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "serverBasePath"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "path":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->isDeployDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->isNewBinary()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0, v7}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->setServerBasePath(Ljava/lang/String;)V

    .line 82
    :cond_1
    return-void
.end method

.method public setServerBasePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->localServer:Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    invoke-virtual {v0, p1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->hostFiles(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v1, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->CDV_LOCAL_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    return-void
.end method
