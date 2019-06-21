.class Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;
.super Lorg/apache/cordova/engine/SystemWebViewClient;
.source "IonicWebViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ionicframework/cordova/webview/IonicWebViewEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerClient"
.end annotation


# instance fields
.field private parser:Lorg/apache/cordova/ConfigXmlParser;

.field final synthetic this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;


# direct methods
.method public constructor <init>(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/ConfigXmlParser;)V
    .locals 0
    .param p2, "parentEngine"    # Lorg/apache/cordova/engine/SystemWebViewEngine;
    .param p3, "parser"    # Lorg/apache/cordova/ConfigXmlParser;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    .line 117
    invoke-direct {p0, p2}, Lorg/apache/cordova/engine/SystemWebViewClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    .line 118
    iput-object p3, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->parser:Lorg/apache/cordova/ConfigXmlParser;

    .line 119
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/engine/SystemWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function() { window.WEBVIEW_SERVER_URL = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    .line 152
    invoke-static {v1}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->access$100(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/engine/SystemWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v2, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v2}, Lorg/apache/cordova/ConfigXmlParser;->getLaunchUrl()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "launchUrl":Ljava/lang/String;
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 140
    iget-object v2, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    invoke-static {v2}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->access$100(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "startUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    invoke-static {v2}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->access$100(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    invoke-static {v2}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->access$100(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_0
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    .end local v1    # "startUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    invoke-static {v0}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->access$000(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->shouldInterceptRequest(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/IonicWebViewEngine$ServerClient;->this$0:Lcom/ionicframework/cordova/webview/IonicWebViewEngine;

    invoke-static {v0}, Lcom/ionicframework/cordova/webview/IonicWebViewEngine;->access$000(Lcom/ionicframework/cordova/webview/IonicWebViewEngine;)Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->shouldInterceptRequest(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
