.class public Lcom/ionicframework/cordova/webview/WebViewLocalServer;
.super Ljava/lang/Object;
.source "WebViewLocalServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;,
        Lcom/ionicframework/cordova/webview/WebViewLocalServer$LazyInputStream;,
        Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;,
        Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final contentStart:Ljava/lang/String; = "/_app_content_"

.field public static final fileStart:Ljava/lang/String; = "/_app_file_"

.field public static final httpScheme:Ljava/lang/String; = "http"

.field public static final httpsScheme:Ljava/lang/String; = "https"


# instance fields
.field private final authority:Ljava/lang/String;

.field private basePath:Ljava/lang/String;

.field private final customScheme:Ljava/lang/String;

.field private final html5mode:Z

.field private isAsset:Z

.field private parser:Lorg/apache/cordova/ConfigXmlParser;

.field private final protocolHandler:Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;

.field private final uriMatcher:Lcom/ionicframework/cordova/webview/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "WebViewAssetServer"

    sput-object v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLorg/apache/cordova/ConfigXmlParser;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "html5mode"    # Z
    .param p4, "parser"    # Lorg/apache/cordova/ConfigXmlParser;
    .param p5, "customScheme"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/ionicframework/cordova/webview/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ionicframework/cordova/webview/UriMatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->uriMatcher:Lcom/ionicframework/cordova/webview/UriMatcher;

    .line 168
    iput-boolean p3, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->html5mode:Z

    .line 169
    iput-object p4, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->parser:Lorg/apache/cordova/ConfigXmlParser;

    .line 170
    new-instance v0, Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->protocolHandler:Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;

    .line 171
    iput-object p2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->customScheme:Ljava/lang/String;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/ionicframework/cordova/webview/WebViewLocalServer;)Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;
    .locals 1
    .param p0, "x0"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->protocolHandler:Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ionicframework/cordova/webview/WebViewLocalServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->isAsset:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ionicframework/cordova/webview/WebViewLocalServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createHostingDetails()V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 428
    .local v0, "assetPath":Ljava/lang/String;
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 429
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "assetPath cannot contain the \'*\' character."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_0
    new-instance v1, Lcom/ionicframework/cordova/webview/WebViewLocalServer$1;

    invoke-direct {v1, p0, v0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$1;-><init>(Lcom/ionicframework/cordova/webview/WebViewLocalServer;Ljava/lang/String;)V

    .line 457
    .local v1, "handler":Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    const-string v2, "http"

    iget-object v3, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 458
    const-string v2, "https"

    iget-object v3, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->customScheme:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->customScheme:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->customScheme:Ljava/lang/String;

    iget-object v3, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 463
    :cond_1
    return-void
.end method

.method private static createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;
    .param p5, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 193
    .local p4, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 194
    move v3, p2

    .line 196
    .local v3, "finalStatusCode":I
    :try_start_0
    invoke-virtual {p5}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/16 v3, 0x194

    .line 202
    :cond_0
    :goto_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 204
    .end local v3    # "finalStatusCode":I
    :goto_1
    return-object v0

    .line 199
    .restart local v3    # "finalStatusCode":I
    :catch_0
    move-exception v7

    .line 200
    .local v7, "e":Ljava/io/IOException;
    const/16 v3, 0x1f4

    goto :goto_0

    .line 204
    .end local v3    # "finalStatusCode":I
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, p0, p1, p5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method private getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 358
    .local v1, "mimeType":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    const-string v2, ".js"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "image/x-icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const-string v2, "IonicWebViewEngine"

    const-string v3, "We shouldn\'t be here"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    if-nez v1, :cond_1

    .line 363
    const-string v2, ".js"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    const-string v1, "application/javascript"

    .line 373
    :cond_1
    :goto_0
    return-object v1

    .line 367
    :cond_2
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get mime type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleLocalRequest(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 32
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "handler"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    .param p3, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 245
    .local v25, "path":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_1

    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v5, "Range"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 246
    new-instance v7, Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Landroid/net/Uri;)V

    .line 247
    .local v7, "responseStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 249
    .local v6, "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0xce

    .line 251
    .local v4, "statusCode":I
    :try_start_0
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v31

    .line 252
    .local v31, "totalRange":I
    invoke-interface/range {p3 .. p3}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v5, "Range"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 253
    .local v28, "rangeString":Ljava/lang/String;
    const-string v3, "="

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 254
    .local v24, "parts":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v24, v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 255
    .local v30, "streamParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v21, v30, v3

    .line 256
    .local v21, "fromRange":Ljava/lang/String;
    add-int/lit8 v27, v31, -0x1

    .line 257
    .local v27, "range":I
    move-object/from16 v0, v30

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 258
    const/4 v3, 0x1

    aget-object v3, v30, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 260
    :cond_0
    const-string v3, "Accept-Ranges"

    const-string v5, "bytes"

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "Content-Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v21    # "fromRange":Ljava/lang/String;
    .end local v24    # "parts":[Ljava/lang/String;
    .end local v27    # "range":I
    .end local v28    # "rangeString":Ljava/lang/String;
    .end local v30    # "streamParts":[Ljava/lang/String;
    .end local v31    # "totalRange":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static/range {v2 .. v7}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    .line 304
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v6    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "responseStream":Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 262
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v4    # "statusCode":I
    .restart local v6    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    :catch_0
    move-exception v20

    .line 263
    .local v20, "e":Ljava/io/IOException;
    const/16 v4, 0x194

    goto :goto_0

    .line 268
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v6    # "tempResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "responseStream":Ljava/io/InputStream;
    .end local v20    # "e":Ljava/io/IOException;
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->isLocalFile(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    new-instance v7, Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Landroid/net/Uri;)V

    .line 270
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2    # "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v9

    .line 272
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v12

    move-object v8, v2

    move-object v13, v7

    .line 271
    invoke-static/range {v8 .. v13}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto :goto_1

    .line 275
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v7    # "responseStream":Ljava/io/InputStream;
    :cond_2
    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->html5mode:Z

    if-eqz v3, :cond_5

    .line 277
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->parser:Lorg/apache/cordova/ConfigXmlParser;

    invoke-virtual {v3}, Lorg/apache/cordova/ConfigXmlParser;->getLaunchUrl()Ljava/lang/String;

    move-result-object v23

    .line 278
    .local v23, "launchURL":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 280
    .local v22, "launchFile":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->basePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 281
    .local v29, "startPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->isAsset:Z

    if-eqz v3, :cond_4

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->protocolHandler:Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 292
    .local v13, "stream":Ljava/io/InputStream;
    :goto_2
    const-string v8, "text/html"

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v9

    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v12

    .line 292
    invoke-static/range {v8 .. v13}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_1

    .line 284
    .end local v13    # "stream":Ljava/io/InputStream;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->protocolHandler:Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/ionicframework/cordova/webview/AndroidProtocolHandler;->openFile(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .restart local v13    # "stream":Ljava/io/InputStream;
    goto :goto_2

    .line 287
    .end local v13    # "stream":Ljava/io/InputStream;
    .end local v29    # "startPath":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 288
    .restart local v20    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 296
    .end local v20    # "e":Ljava/io/IOException;
    .end local v22    # "launchFile":Ljava/lang/String;
    .end local v23    # "launchURL":Ljava/lang/String;
    :cond_5
    const-string v3, "."

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 297
    .local v26, "periodIndex":I
    if-ltz v26, :cond_6

    .line 298
    new-instance v7, Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Landroid/net/Uri;)V

    .line 299
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .restart local v2    # "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v15

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v18

    move-object v14, v2

    move-object/from16 v19, v7

    .line 300
    invoke-static/range {v14 .. v19}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    goto/16 :goto_1

    .line 304
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v7    # "responseStream":Ljava/io/InputStream;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private handleProxyRequest(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "handler"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;

    .prologue
    .line 316
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 317
    .local v15, "path":Ljava/lang/String;
    new-instance v17, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 318
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 319
    .local v13, "conn":Ljava/net/HttpURLConnection;
    const-string v2, "GET"

    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 320
    const/16 v2, 0x7530

    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 321
    const/16 v2, 0x7530

    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 323
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 325
    .local v6, "stream":Ljava/io/InputStream;
    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->html5mode:Z

    if-eqz v2, :cond_1

    .line 326
    :cond_0
    const-string v1, "text/html"

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 326
    invoke-static/range {v1 .. v6}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 352
    .end local v6    # "stream":Ljava/io/InputStream;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "path":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :goto_0
    return-object v2

    .line 330
    .restart local v6    # "stream":Ljava/io/InputStream;
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_1
    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 331
    .local v16, "periodIndex":I
    if-ltz v16, :cond_3

    .line 332
    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 335
    .local v14, "ext":Ljava/lang/String;
    const-string v2, ".html"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 340
    invoke-static/range {v1 .. v6}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_0

    .line 344
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v14    # "ext":Ljava/lang/String;
    :cond_3
    const-string v7, ""

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getStatusCode()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    move-object v12, v6

    .line 344
    invoke-static/range {v7 .. v12}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createWebResourceResponse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 349
    .end local v6    # "stream":Ljava/io/InputStream;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "periodIndex":I
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 352
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 347
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/_app_content_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/_app_file_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    const/4 v1, 0x1

    .line 239
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseAndVerifyUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    if-nez p0, :cond_1

    move-object v1, v2

    .line 189
    :cond_0
    :goto_0
    return-object v1

    .line 179
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 181
    sget-object v3, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 186
    :cond_3
    sget-object v3, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL does not have a path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 187
    goto :goto_0
.end method

.method private registerUriForScheme(Ljava/lang/String;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 466
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 467
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 468
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 469
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 470
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 472
    .local v1, "uriPrefix":Landroid/net/Uri;
    const-string v2, "/"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)V

    .line 473
    const-string v2, "**"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)V

    .line 474
    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public hostAssets(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->hostAssets(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public hostAssets(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->isAsset:Z

    .line 420
    iput-object p2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createHostingDetails()V

    .line 423
    return-void
.end method

.method public hostFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->isAsset:Z

    .line 568
    iput-object p1, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 569
    invoke-direct {p0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->createHostingDetails()V

    .line 570
    return-void
.end method

.method public hostResources()Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 483
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    const-string v1, "/res"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->hostResources(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;

    move-result-object v0

    return-object v0
.end method

.method public hostResources(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;
    .locals 6
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "virtualResourcesPath"    # Ljava/lang/String;
    .param p3, "enableHttp"    # Z
    .param p4, "enableHttps"    # Z

    .prologue
    .line 517
    const/16 v4, 0x2a

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 518
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "virtualResourcesPath cannot contain the \'*\' character."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 522
    :cond_0
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 523
    .local v3, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v4, "http"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 524
    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 525
    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, "httpPrefix":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 530
    .local v2, "httpsPrefix":Landroid/net/Uri;
    new-instance v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer$2;

    invoke-direct {v0, p0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$2;-><init>(Lcom/ionicframework/cordova/webview/WebViewLocalServer;)V

    .line 545
    .local v0, "handler":Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    if-eqz p3, :cond_1

    .line 546
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 547
    const-string v4, "**"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)V

    .line 549
    :cond_1
    if-eqz p4, :cond_2

    .line 550
    const-string v4, "https"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 551
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 552
    const-string v4, "**"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)V

    .line 554
    :cond_2
    new-instance v4, Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;

    invoke-direct {v4, v1, v2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v4
.end method

.method public hostResources(Ljava/lang/String;ZZ)Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;
    .locals 1
    .param p1, "virtualResourcesPath"    # Ljava/lang/String;
    .param p2, "enableHttp"    # Z
    .param p3, "enableHttps"    # Z

    .prologue
    .line 498
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->hostResources(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/ionicframework/cordova/webview/WebViewLocalServer$AssetHostingDetails;

    move-result-object v0

    return-object v0
.end method

.method register(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "handler"    # Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;

    .prologue
    .line 389
    iget-object v1, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->uriMatcher:Lcom/ionicframework/cordova/webview/UriMatcher;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->uriMatcher:Lcom/ionicframework/cordova/webview/UriMatcher;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/ionicframework/cordova/webview/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldInterceptRequest(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 219
    iget-object v2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->uriMatcher:Lcom/ionicframework/cordova/webview/UriMatcher;

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->uriMatcher:Lcom/ionicframework/cordova/webview/UriMatcher;

    invoke-virtual {v1, p1}, Lcom/ionicframework/cordova/webview/UriMatcher;->match(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;

    .line 221
    .local v0, "handler":Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    monitor-exit v2

    .line 222
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 230
    :goto_0
    return-object v1

    .line 221
    .end local v0    # "handler":Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 226
    .restart local v0    # "handler":Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;
    :cond_0
    invoke-direct {p0, p1}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->isLocalFile(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    :cond_1
    const-string v1, "SERVER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling local request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, p1, v0, p2}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->handleLocalRequest(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/ionicframework/cordova/webview/WebViewLocalServer;->handleProxyRequest(Landroid/net/Uri;Lcom/ionicframework/cordova/webview/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0
.end method
