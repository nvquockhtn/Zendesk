.class public abstract Lcom/zendesk/api/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field protected static final HTTP_CONTENT_TYPE_ANY:Ljava/lang/String; = "*/*"

.field protected static final HTTP_CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field protected static final HTTP_CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field protected static final HTTP_HEADER_ACCEPT_TYPE:Ljava/lang/String; = "Accept"

.field static final HTTP_HEADER_AUTH:Ljava/lang/String; = "Authorization"

.field static final HTTP_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HTTP_METHOD_DELETE:B = 0x1t

.field public static final HTTP_METHOD_GET:B = 0x0t

.field public static final HTTP_METHOD_POST:B = 0x3t

.field public static final HTTP_METHOD_PUT:B = 0x2t

.field static final HTTP_PROTOCOL_HTTP:Ljava/lang/String; = "http://"

.field static final HTTP_PROTOCOL_HTTPS:Ljava/lang/String; = "https://"

.field private static MILLISECONDS:I = 0x0

.field private static final REDIRECT_WITHOUT_LOC:Ljava/lang/String; = "Redirect received but no location specified"

.field private static REQUEST_TIMEOUT:I

.field static baseServer:Ljava/lang/String;

.field private static client:Lorg/apache/http/client/HttpClient;

.field private static conManager:Lorg/apache/http/conn/ClientConnectionManager;

.field public static debugLoggingEnabled:Z

.field private static final defaultRedirectHandler:Lcom/zendesk/api/http/RedirectHandler;

.field static encodedHttpAuthVal:Ljava/lang/String;

.field private static final logger:Lorg/slf4j/Logger;

.field static proto:Ljava/lang/String;

.field private static socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

.field static socketURL:Ljava/lang/String;

.field static subdo:Ljava/lang/String;


# instance fields
.field acceptType:Ljava/lang/String;

.field additionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field binaryRequest:Z

.field body:[B

.field contentLength:J

.field contentType:Ljava/lang/String;

.field error:Lcom/zendesk/api/http/RequestException;

.field httpMethod:B

.field outputStream:Ljava/io/OutputStream;

.field passLocaleWithRequest:Z

.field path:Ljava/lang/String;

.field private progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

.field redirectHandler:Lcom/zendesk/api/http/RedirectHandler;

.field redirectURL:Ljava/lang/String;

.field requestURL:Ljava/lang/String;

.field responseBytes:[B

.field responseCode:I

.field responseString:Ljava/lang/String;

.field protected shouldUseAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/zendesk/api/http/Request;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zendesk/api/http/Request;->debugLoggingEnabled:Z

    .line 94
    new-instance v0, Lcom/zendesk/api/http/ZendeskRedirectHandler;

    invoke-direct {v0}, Lcom/zendesk/api/http/ZendeskRedirectHandler;-><init>()V

    sput-object v0, Lcom/zendesk/api/http/Request;->defaultRedirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    .line 96
    const/16 v0, 0x1e

    sput v0, Lcom/zendesk/api/http/Request;->REQUEST_TIMEOUT:I

    .line 97
    const/16 v0, 0x3e8

    sput v0, Lcom/zendesk/api/http/Request;->MILLISECONDS:I

    .line 138
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/http/Request;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 139
    invoke-static {}, Lcom/zendesk/api/http/Request;->initClient()V

    .line 140
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/api/http/Request;->shouldUseAuth:Z

    .line 111
    iput-byte v1, p0, Lcom/zendesk/api/http/Request;->httpMethod:B

    .line 112
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->contentType:Ljava/lang/String;

    .line 113
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->acceptType:Ljava/lang/String;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    .line 130
    iput-boolean v1, p0, Lcom/zendesk/api/http/Request;->passLocaleWithRequest:Z

    .line 244
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->path:Ljava/lang/String;

    .line 245
    sget-object v0, Lcom/zendesk/api/http/Request;->defaultRedirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->redirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "passLocaleWithRequest"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/api/http/Request;->shouldUseAuth:Z

    .line 111
    iput-byte v1, p0, Lcom/zendesk/api/http/Request;->httpMethod:B

    .line 112
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->contentType:Ljava/lang/String;

    .line 113
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->acceptType:Ljava/lang/String;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    .line 130
    iput-boolean v1, p0, Lcom/zendesk/api/http/Request;->passLocaleWithRequest:Z

    .line 254
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->path:Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/zendesk/api/http/Request;->defaultRedirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->redirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    .line 256
    iput-boolean p2, p0, Lcom/zendesk/api/http/Request;->passLocaleWithRequest:Z

    .line 257
    return-void
.end method

.method private convertToString()V
    .locals 4

    .prologue
    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/zendesk/api/http/Request;->responseBytes:[B

    if-eqz v1, :cond_0

    .line 659
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/zendesk/api/http/Request;->responseBytes:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/zendesk/api/http/Request;->responseString:Ljava/lang/String;

    .line 660
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zendesk/api/http/Request;->responseBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 552
    if-nez p0, :cond_0

    const-string v1, ""

    .line 554
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static escapeForJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 567
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 575
    :goto_0
    return-object v0

    .line 568
    :cond_0
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-static {v1, v2, p0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, temp:Ljava/lang/String;
    const-string v1, "\n\r"

    const-string v2, "\\n"

    invoke-static {v1, v2, v0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string v1, "\r\n"

    const-string v2, "\\n"

    invoke-static {v1, v2, v0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-static {v1, v2, v0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-static {v1, v2, v0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-static {v1, v2, p0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-static {v1, v2, v0}, Lcom/zendesk/api/http/Request;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    goto :goto_0
.end method

.method public static getBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/zendesk/api/http/Request;->baseServer:Ljava/lang/String;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/zendesk/api/http/Request;->socketURL:Ljava/lang/String;

    return-object v0
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 6
    .parameter "resp"
    .parameter "httpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x190

    .line 623
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput v2, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    .line 625
    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 626
    .local v0, cl:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 627
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zendesk/api/http/Request;->contentLength:J

    .line 630
    :cond_0
    iget v2, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2

    iget v2, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    if-ge v2, v4, :cond_2

    .line 631
    invoke-direct {p0, p1}, Lcom/zendesk/api/http/Request;->redirect(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    if-eqz p1, :cond_1

    .line 648
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :cond_1
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error finishing content for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/api/http/Request;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 635
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/zendesk/api/http/Request;->readBytes(Lorg/apache/http/HttpEntity;Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 641
    iget v2, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    if-lt v2, v4, :cond_4

    .line 642
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Request error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    .end local v0           #cl:Lorg/apache/http/Header;
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    .line 648
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 651
    :cond_3
    :goto_1
    throw v2

    .line 646
    .restart local v0       #cl:Lorg/apache/http/Header;
    :cond_4
    if-eqz p1, :cond_1

    .line 648
    :try_start_4
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 649
    :catch_1
    move-exception v1

    .line 650
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v2, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error finishing content for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/api/http/Request;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 649
    .end local v0           #cl:Lorg/apache/http/Header;
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 650
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v3, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing content for request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/api/http/Request;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static init(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "useHTTPS"
    .parameter "subdo"
    .parameter "email"
    .parameter "pword"
    .parameter "userAgent"

    .prologue
    .line 181
    invoke-static {}, Lcom/zendesk/api/http/Request;->initClient()V

    .line 182
    sget-object v1, Lcom/zendesk/api/http/Request;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.useragent"

    invoke-interface {v1, v2, p4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 183
    if-eqz p0, :cond_1

    const-string v1, "https://"

    :goto_0
    sput-object v1, Lcom/zendesk/api/http/Request;->proto:Ljava/lang/String;

    .line 184
    sput-object p1, Lcom/zendesk/api/http/Request;->subdo:Ljava/lang/String;

    .line 185
    invoke-static {p0}, Lcom/zendesk/api/http/Request;->makeEndpoint(Z)V

    .line 186
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, authString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/http/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zendesk/api/http/Request;->encodedHttpAuthVal:Ljava/lang/String;

    .line 193
    .end local v0           #authString:Ljava/lang/String;
    :cond_0
    return-void

    .line 183
    :cond_1
    const-string v1, "http://"

    goto :goto_0
.end method

.method private static initClient()V
    .locals 6

    .prologue
    .line 152
    const-string v2, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 155
    .local v0, params:Lorg/apache/http/params/HttpParams;
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 156
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 158
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 159
    sget v2, Lcom/zendesk/api/http/Request;->REQUEST_TIMEOUT:I

    sget v3, Lcom/zendesk/api/http/Request;->MILLISECONDS:I

    mul-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 162
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 163
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 164
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    sget-object v4, Lcom/zendesk/api/http/Request;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 166
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/zendesk/api/http/Request;->conManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 167
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/zendesk/api/http/Request;->conManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/zendesk/api/http/Request;->client:Lorg/apache/http/client/HttpClient;

    .line 168
    return-void
.end method

.method private static makeEndpoint(Z)V
    .locals 3
    .parameter "useHTTPS"

    .prologue
    .line 197
    if-eqz p0, :cond_1

    .line 198
    const-string v0, "https://"

    sput-object v0, Lcom/zendesk/api/http/Request;->proto:Ljava/lang/String;

    .line 203
    :goto_0
    sget-object v0, Lcom/zendesk/api/http/Request;->subdo:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 204
    sget-object v0, Lcom/zendesk/api/http/Request;->subdo:Ljava/lang/String;

    sput-object v0, Lcom/zendesk/api/http/Request;->socketURL:Ljava/lang/String;

    .line 209
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zendesk/api/http/Request;->proto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/http/Request;->socketURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/http/Request;->baseServer:Ljava/lang/String;

    .line 210
    sget-boolean v0, Lcom/zendesk/api/http/Request;->debugLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base Server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/http/Request;->baseServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void

    .line 200
    :cond_1
    const-string v0, "http://"

    sput-object v0, Lcom/zendesk/api/http/Request;->proto:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zendesk/api/http/Request;->subdo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zendesk.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/http/Request;->socketURL:Ljava/lang/String;

    goto :goto_1
.end method

.method private readBytes(Lorg/apache/http/HttpEntity;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 11
    .parameter "entity"
    .parameter "httpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x190

    const/4 v9, 0x0

    .line 669
    const/4 v3, 0x0

    .line 671
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 672
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 674
    .local v4, totalRead:I
    const/4 v2, 0x0

    .line 675
    .local v2, bytesReadToBuf:I
    const/16 v5, 0x800

    new-array v1, v5, [B

    .line 676
    .local v1, buf:[B
    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_7

    .line 677
    add-int/2addr v4, v2

    .line 678
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 679
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 703
    :cond_1
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_2

    .line 704
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 705
    iput-object v9, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    .line 709
    :cond_2
    :goto_1
    return-void

    .line 682
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    if-ge v5, v10, :cond_6

    .line 683
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 687
    :goto_2
    iget-wide v5, p0, Lcom/zendesk/api/http/Request;->contentLength:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 688
    mul-int/lit8 v5, v4, 0x63

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/zendesk/api/http/Request;->contentLength:J

    div-long/2addr v5, v7

    long-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/zendesk/api/http/Request;->reportProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 702
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #bytesReadToBuf:I
    .end local v4           #totalRead:I
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 703
    :cond_4
    iget-object v6, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    if-eqz v6, :cond_5

    .line 704
    iget-object v6, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 705
    iput-object v9, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    :cond_5
    throw v5

    .line 685
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #bytesReadToBuf:I
    .restart local v4       #totalRead:I
    :cond_6
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 691
    :cond_7
    const/16 v5, 0x64

    invoke-direct {p0, v5}, Lcom/zendesk/api/http/Request;->reportProgress(I)V

    .line 692
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    if-lt v5, v10, :cond_a

    .line 693
    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 694
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/http/Request;->responseBytes:[B

    .line 695
    invoke-direct {p0}, Lcom/zendesk/api/http/Request;->convertToString()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 703
    :cond_9
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    if-eqz v5, :cond_2

    .line 704
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 705
    iput-object v9, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    goto :goto_1

    .line 697
    :cond_a
    :try_start_3
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 698
    iget-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 699
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private redirect(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 714
    const-string v1, "location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 716
    .local v0, locHeaders:[Lorg/apache/http/Header;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 717
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Redirect received but no location specified"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/http/Request;->redirectURL:Ljava/lang/String;

    .line 721
    sget-object v1, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect received ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/api/http/Request;->redirectURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/zendesk/api/http/Request;->redirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/zendesk/api/http/Request;->redirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    invoke-interface {v1, p0, p1}, Lcom/zendesk/api/http/RedirectHandler;->handleRedirect(Lcom/zendesk/api/http/Request;Lorg/apache/http/HttpResponse;)V

    .line 726
    :cond_1
    return-void
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "replace"
    .parameter "with"
    .parameter "in"

    .prologue
    .line 588
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Replace cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 593
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 594
    .local v2, startIdx:I
    const/4 v0, 0x0

    .line 595
    .local v0, idxOld:I
    :goto_0
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 596
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v0, v3

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private reportProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    invoke-interface {v0, p1}, Lcom/zendesk/api/http/ProgressMonitor;->setProgress(I)V

    .line 732
    :cond_0
    return-void
.end method

.method public static setSSLSocketFactory(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0
    .parameter "socketFactory"

    .prologue
    .line 148
    sput-object p0, Lcom/zendesk/api/http/Request;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 149
    return-void
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "open"
    .parameter "close"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 532
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-object v2

    .line 535
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 536
    .local v1, start:I
    if-eq v1, v4, :cond_0

    .line 537
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 538
    .local v0, end:I
    if-eq v0, v4, :cond_0

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->additionalHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->additionalHeaders:Ljava/util/Map;

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->additionalHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    return-void
.end method

.method public execute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/zendesk/api/http/Request;->reportProgress(I)V

    .line 268
    const/4 v6, 0x0

    .line 272
    .local v6, request:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->redirectURL:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 273
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->redirectURL:Ljava/lang/String;

    iput-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    .line 278
    :goto_0
    iget-boolean v9, p0, Lcom/zendesk/api/http/Request;->passLocaleWithRequest:Z

    if-eqz v9, :cond_0

    .line 279
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zendesk/api/LocaleMapper;->mapLocaleToZendeskLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    .line 285
    :cond_0
    :goto_1
    const-string v5, "GET"

    .line 287
    .local v5, method:Ljava/lang/String;
    iget-byte v9, p0, Lcom/zendesk/api/http/Request;->httpMethod:B

    packed-switch v9, :pswitch_data_0

    .line 304
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .end local v6           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .local v7, request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v7

    .line 309
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_2
    sget-boolean v9, Lcom/zendesk/api/http/Request;->debugLoggingEnabled:Z

    if-eqz v9, :cond_1

    .line 310
    sget-object v9, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Request "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 313
    :cond_1
    iget-boolean v9, p0, Lcom/zendesk/api/http/Request;->shouldUseAuth:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/zendesk/api/http/Request;->encodedHttpAuthVal:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 314
    const-string v9, "Authorization"

    sget-object v10, Lcom/zendesk/api/http/Request;->encodedHttpAuthVal:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->contentType:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 317
    const-string v9, "Content-Type"

    iget-object v10, p0, Lcom/zendesk/api/http/Request;->contentType:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_3
    const-string v9, "Accept"

    iget-object v10, p0, Lcom/zendesk/api/http/Request;->acceptType:Ljava/lang/String;

    invoke-interface {v6, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->additionalHeaders:Ljava/util/Map;

    if-eqz v9, :cond_7

    .line 322
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->additionalHeaders:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 323
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 324
    .local v8, s:Ljava/lang/String;
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->additionalHeaders:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 339
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #method:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 341
    .local v2, e:Ljava/lang/Throwable;
    sget-object v9, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error sending request to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    new-instance v9, Lcom/zendesk/api/http/RequestException;

    iget v10, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    iget-object v11, p0, Lcom/zendesk/api/http/Request;->responseString:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v2}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    iput-object v9, p0, Lcom/zendesk/api/http/Request;->error:Lcom/zendesk/api/http/RequestException;

    .line 343
    if-eqz v6, :cond_4

    .line 344
    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 346
    :cond_4
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->error:Lcom/zendesk/api/http/RequestException;

    throw v9

    .line 275
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/zendesk/api/http/Request;->baseServer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/zendesk/api/http/Request;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 282
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zendesk/api/LocaleMapper;->mapLocaleToZendeskLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    goto/16 :goto_1

    .line 289
    .restart local v5       #method:Ljava/lang/String;
    :pswitch_0
    const-string v5, "DELETE"

    .line 290
    new-instance v7, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .end local v6           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v7

    .line 291
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_2

    .line 294
    :pswitch_1
    const-string v5, "POST"

    .line 295
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    iget-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .end local v6           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v7

    .line 296
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_2

    .line 299
    :pswitch_2
    const-string v5, "PUT"

    .line 300
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    iget-object v9, p0, Lcom/zendesk/api/http/Request;->requestURL:Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .end local v6           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v7

    .line 301
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_2

    .line 328
    :cond_7
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->body:[B

    if-eqz v9, :cond_8

    .line 329
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v9, p0, Lcom/zendesk/api/http/Request;->body:[B

    invoke-direct {v1, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 330
    .local v1, bae:Lorg/apache/http/entity/ByteArrayEntity;
    move-object v0, v6

    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-object v9, v0

    invoke-virtual {v9, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 333
    .end local v1           #bae:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_8
    sget-object v9, Lcom/zendesk/api/http/Request;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/zendesk/api/http/Request;->handleResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 335
    iget v9, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    const/16 v10, 0x12c

    if-lt v9, v10, :cond_a

    iget v9, p0, Lcom/zendesk/api/http/Request;->responseCode:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v10, 0x190

    if-ge v9, v10, :cond_a

    .line 352
    :cond_9
    :goto_4
    return-void

    .line 349
    :cond_a
    iget-object v9, p0, Lcom/zendesk/api/http/Request;->responseString:Ljava/lang/String;

    if-eqz v9, :cond_9

    sget-boolean v9, Lcom/zendesk/api/http/Request;->debugLoggingEnabled:Z

    if-eqz v9, :cond_9

    .line 350
    sget-object v9, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    iget-object v10, p0, Lcom/zendesk/api/http/Request;->responseString:Ljava/lang/String;

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getError()Lcom/zendesk/api/http/RequestException;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->error:Lcom/zendesk/api/http/RequestException;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->redirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBytes()[B
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->responseBytes:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/zendesk/api/http/Request;->responseCode:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->responseString:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/zendesk/api/http/Request;->error:Lcom/zendesk/api/http/RequestException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAcceptType(Ljava/lang/String;)V
    .locals 0
    .parameter "acceptType"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->acceptType:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setBinaryRequest(Z)V
    .locals 1
    .parameter "binaryRequest"

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/zendesk/api/http/Request;->binaryRequest:Z

    .line 479
    if-eqz p1, :cond_0

    .line 480
    const-string v0, "*/*"

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->acceptType:Ljava/lang/String;

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/http/Request;->contentType:Ljava/lang/String;

    .line 483
    :cond_0
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 451
    sget-boolean v1, Lcom/zendesk/api/http/Request;->debugLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 452
    sget-object v1, Lcom/zendesk/api/http/Request;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting request data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    .line 456
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/http/Request;->body:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_1
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBody([B)V
    .locals 0
    .parameter "body"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->body:[B

    .line 443
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->contentType:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setHttpMethod(B)V
    .locals 0
    .parameter "httpMethod"

    .prologue
    .line 406
    iput-byte p1, p0, Lcom/zendesk/api/http/Request;->httpMethod:B

    .line 407
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "outputStream"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->outputStream:Ljava/io/OutputStream;

    .line 470
    return-void
.end method

.method public setProgressMonitor(Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 0
    .parameter "progressMonitor"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    .line 611
    return-void
.end method

.method public setRedirectHandler(Lcom/zendesk/api/http/RedirectHandler;)V
    .locals 0
    .parameter "redirectHandler"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->redirectHandler:Lcom/zendesk/api/http/RedirectHandler;

    .line 434
    return-void
.end method

.method public setRedirectURL(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectURL"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/zendesk/api/http/Request;->redirectURL:Ljava/lang/String;

    .line 492
    return-void
.end method
