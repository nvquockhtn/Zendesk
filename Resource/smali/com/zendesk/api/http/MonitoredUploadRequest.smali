.class public Lcom/zendesk/api/http/MonitoredUploadRequest;
.super Lcom/zendesk/api/http/Request;
.source "MonitoredUploadRequest.java"


# static fields
.field private static final boundary:Ljava/lang/String; = "-----------------------lahsdlakjgdo"

.field private static final logger:Lorg/slf4j/Logger; = null

.field private static final maxBufferSize:I = 0x1000

.field private static final newLine:Ljava/lang/String; = "\r\n"


# instance fields
.field fileContentType:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field protected final formParams:Ljava/util/Map;
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

.field private httpMethod:Ljava/lang/String;

.field progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

.field stream:Ljava/io/InputStream;

.field streamLength:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/zendesk/api/http/MonitoredUploadRequest;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/zendesk/api/http/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "path"
    .parameter "stream"
    .parameter "progressMonitor"
    .parameter "fileName"
    .parameter "fileContentType"
    .parameter "streamLength"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "Zendesk for Android"

    iput-object v0, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->userAgent:Ljava/lang/String;

    .line 36
    const-string v0, "POST"

    iput-object v0, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->httpMethod:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->formParams:Ljava/util/Map;

    .line 58
    iput-object p2, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->stream:Ljava/io/InputStream;

    .line 59
    iput-object p3, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    .line 60
    iput-object p4, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->fileName:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->fileContentType:Ljava/lang/String;

    .line 62
    iput-wide p6, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->streamLength:J

    .line 63
    return-void
.end method

.method private buildHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->httpMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/http/MonitoredUploadRequest;->socketURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Authorization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/http/MonitoredUploadRequest;->encodedHttpAuthVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "User-Agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Accept-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Connection: close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----------------------lahsdlakjgdo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Length: %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseResponse(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, responseLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 195
    const-string v4, "No response from server."

    iput-object v4, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseString:Ljava/lang/String;

    .line 198
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "HTTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseString:Ljava/lang/String;

    .line 200
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 203
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, statusLine:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, contentStarted:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 209
    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    const/4 v0, 0x1

    .line 208
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseString:Ljava/lang/String;

    .line 217
    return-void
.end method

.method private reportProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/zendesk/api/http/MonitoredUploadRequest;->progressMonitor:Lcom/zendesk/api/http/ProgressMonitor;

    invoke-interface {v0, p1}, Lcom/zendesk/api/http/ProgressMonitor;->setProgress(I)V

    .line 223
    :cond_0
    return-void
.end method

.method private static writeContent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "fileName"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 238
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    .local v2, key:Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 240
    .local v4, val:Ljava/lang/String;
    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-----------------------lahsdlakjgdo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 245
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #val:Ljava/lang/String;
    :cond_0
    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "-----------------------lahsdlakjgdo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v5, "Content-Disposition: form-data; name=\"uploaded_data\"; filename=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const-string v5, "Content-Type: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public execute()V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 82
    const/16 v24, 0x0

    .line 83
    .local v24, writer:Ljava/io/OutputStream;
    const/16 v16, 0x0

    .line 84
    .local v16, reader:Ljava/io/BufferedReader;
    const/16 v19, 0x0

    .line 89
    .local v19, socket:Ljava/net/Socket;
    const/16 v23, 0x63

    .line 91
    .local v23, totalProgress:I
    const/16 v25, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/zendesk/api/http/MonitoredUploadRequest;->reportProgress(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->formParams:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->fileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->fileContentType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/zendesk/api/http/MonitoredUploadRequest;->writeContent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, openingPart:Ljava/lang/String;
    const-string v7, "\r\n-------------------------lahsdlakjgdo--\r\n"

    .line 96
    .local v7, closingPart:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 97
    .local v14, openingPartBytes:[B
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 99
    .local v8, closingPartBytes:[B
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->streamLength:J

    move-wide/from16 v25, v0

    array-length v0, v14

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    add-long v21, v25, v27

    .line 101
    .local v21, totalContentLength:J
    invoke-direct/range {p0 .. p0}, Lcom/zendesk/api/http/MonitoredUploadRequest;->buildHeader()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, header:Ljava/lang/String;
    sget-object v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->proto:Ljava/lang/String;

    const-string v26, "http://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 104
    new-instance v20, Ljava/net/Socket;

    sget-object v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->socketURL:Ljava/lang/String;

    const/16 v26, 0x50

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .end local v19           #socket:Ljava/net/Socket;
    .local v20, socket:Ljava/net/Socket;
    move-object/from16 v19, v20

    .line 110
    .end local v20           #socket:Ljava/net/Socket;
    .restart local v19       #socket:Ljava/net/Socket;
    :goto_0
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 111
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    .line 112
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 114
    .end local v16           #reader:Ljava/io/BufferedReader;
    .local v17, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/OutputStream;->write([B)V

    .line 115
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->stream:Ljava/io/InputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 118
    .local v5, bytesAvailable:I
    const/16 v25, 0x1000

    move/from16 v0, v25

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 119
    .local v4, bufferSize:I
    new-array v3, v4, [B

    .line 120
    .local v3, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->stream:Ljava/io/InputStream;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 121
    .local v6, bytesRead:I
    move v15, v6

    .line 122
    .local v15, readSoFar:I
    mul-int v25, v23, v15

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->streamLength:J

    move-wide/from16 v27, v0

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/zendesk/api/http/MonitoredUploadRequest;->reportProgress(I)V

    .line 123
    :goto_1
    if-lez v6, :cond_4

    .line 124
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->stream:Ljava/io/InputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 126
    const/16 v25, 0x1000

    move/from16 v0, v25

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->stream:Ljava/io/InputStream;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 128
    add-int/2addr v15, v6

    .line 129
    mul-int v25, v23, v15

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->streamLength:J

    move-wide/from16 v27, v0

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/zendesk/api/http/MonitoredUploadRequest;->reportProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 157
    .end local v3           #buffer:[B
    .end local v4           #bufferSize:I
    .end local v5           #bytesAvailable:I
    .end local v6           #bytesRead:I
    .end local v15           #readSoFar:I
    :catch_0
    move-exception v9

    move-object/from16 v16, v17

    .line 158
    .end local v7           #closingPart:Ljava/lang/String;
    .end local v8           #closingPartBytes:[B
    .end local v11           #header:Ljava/lang/String;
    .end local v13           #openingPart:Ljava/lang/String;
    .end local v14           #openingPartBytes:[B
    .end local v17           #reader:Ljava/io/BufferedReader;
    .end local v21           #totalContentLength:J
    .local v9, e:Ljava/lang/Exception;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    sget-object v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->logger:Lorg/slf4j/Logger;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error sending request to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->path:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    new-instance v25, Lcom/zendesk/api/http/RequestException;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseString:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v9}, Lcom/zendesk/api/http/RequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/http/MonitoredUploadRequest;->error:Lcom/zendesk/api/http/RequestException;

    .line 160
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseString:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->error:Lcom/zendesk/api/http/RequestException;

    move-object/from16 v25, v0

    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    :goto_3
    if-eqz v24, :cond_0

    .line 165
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 166
    const/16 v24, 0x0

    .line 170
    :cond_0
    :goto_4
    if-eqz v16, :cond_1

    .line 172
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 173
    const/16 v16, 0x0

    .line 177
    :cond_1
    :goto_5
    if-eqz v19, :cond_2

    .line 179
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 180
    const/16 v19, 0x0

    .line 182
    :cond_2
    :goto_6
    throw v25

    .line 106
    .restart local v7       #closingPart:Ljava/lang/String;
    .restart local v8       #closingPartBytes:[B
    .restart local v11       #header:Ljava/lang/String;
    .restart local v13       #openingPart:Ljava/lang/String;
    .restart local v14       #openingPartBytes:[B
    .restart local v21       #totalContentLength:J
    :cond_3
    :try_start_6
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v10

    check-cast v10, Ljavax/net/ssl/SSLSocketFactory;

    .line 107
    .local v10, factory:Ljavax/net/ssl/SSLSocketFactory;
    sget-object v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->socketURL:Ljava/lang/String;

    const/16 v26, 0x1bb

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v19, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 131
    .end local v10           #factory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v3       #buffer:[B
    .restart local v4       #bufferSize:I
    .restart local v5       #bytesAvailable:I
    .restart local v6       #bytesRead:I
    .restart local v15       #readSoFar:I
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->stream:Ljava/io/InputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 132
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 134
    sget-boolean v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->debugLoggingEnabled:Z

    if-eqz v25, :cond_5

    .line 135
    sget-object v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->logger:Lorg/slf4j/Logger;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Completed upload of file, size = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 140
    :cond_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v18, responseLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, line:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 142
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 163
    .end local v3           #buffer:[B
    .end local v4           #bufferSize:I
    .end local v5           #bytesAvailable:I
    .end local v6           #bytesRead:I
    .end local v12           #line:Ljava/lang/String;
    .end local v15           #readSoFar:I
    .end local v18           #responseLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v25

    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 145
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v3       #buffer:[B
    .restart local v4       #bufferSize:I
    .restart local v5       #bytesAvailable:I
    .restart local v6       #bytesRead:I
    .restart local v12       #line:Ljava/lang/String;
    .restart local v15       #readSoFar:I
    .restart local v17       #reader:Ljava/io/BufferedReader;
    .restart local v18       #responseLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/zendesk/api/http/MonitoredUploadRequest;->parseResponse(Ljava/util/ArrayList;)V

    .line 147
    sget-boolean v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->debugLoggingEnabled:Z

    if-eqz v25, :cond_7

    .line 148
    sget-object v25, Lcom/zendesk/api/http/MonitoredUploadRequest;->logger:Lorg/slf4j/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 151
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    move/from16 v25, v0

    const/16 v26, 0x12c

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    move/from16 v25, v0

    const/16 v26, 0x190

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 152
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "HTTP Request error (Redirects not currently supported by this class) "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25

    .line 153
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    move/from16 v25, v0

    const/16 v26, 0x190

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    .line 154
    new-instance v25, Ljava/lang/Exception;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "HTTP Request error "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zendesk/api/http/MonitoredUploadRequest;->responseCode:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 163
    :cond_9
    if-eqz v24, :cond_a

    .line 165
    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 166
    const/16 v24, 0x0

    .line 170
    :cond_a
    :goto_8
    if-eqz v17, :cond_c

    .line 172
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 173
    const/16 v16, 0x0

    .line 177
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :goto_9
    if-eqz v19, :cond_b

    .line 179
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 180
    const/16 v19, 0x0

    .line 185
    :cond_b
    :goto_a
    const/16 v25, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/zendesk/api/http/MonitoredUploadRequest;->reportProgress(I)V

    .line 186
    return-void

    .line 174
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v25

    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_9

    .line 167
    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v25

    goto :goto_8

    .line 181
    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v25

    goto :goto_a

    .line 167
    .end local v3           #buffer:[B
    .end local v4           #bufferSize:I
    .end local v5           #bytesAvailable:I
    .end local v6           #bytesRead:I
    .end local v7           #closingPart:Ljava/lang/String;
    .end local v8           #closingPartBytes:[B
    .end local v11           #header:Ljava/lang/String;
    .end local v12           #line:Ljava/lang/String;
    .end local v13           #openingPart:Ljava/lang/String;
    .end local v14           #openingPartBytes:[B
    .end local v15           #readSoFar:I
    .end local v18           #responseLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21           #totalContentLength:J
    :catch_4
    move-exception v26

    goto/16 :goto_4

    .line 174
    :catch_5
    move-exception v26

    goto/16 :goto_5

    .line 181
    :catch_6
    move-exception v26

    goto/16 :goto_6

    .line 157
    :catch_7
    move-exception v9

    goto/16 :goto_2

    .end local v16           #reader:Ljava/io/BufferedReader;
    .restart local v3       #buffer:[B
    .restart local v4       #bufferSize:I
    .restart local v5       #bytesAvailable:I
    .restart local v6       #bytesRead:I
    .restart local v7       #closingPart:Ljava/lang/String;
    .restart local v8       #closingPartBytes:[B
    .restart local v11       #header:Ljava/lang/String;
    .restart local v12       #line:Ljava/lang/String;
    .restart local v13       #openingPart:Ljava/lang/String;
    .restart local v14       #openingPartBytes:[B
    .restart local v15       #readSoFar:I
    .restart local v17       #reader:Ljava/io/BufferedReader;
    .restart local v18       #responseLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21       #totalContentLength:J
    :cond_c
    move-object/from16 v16, v17

    .end local v17           #reader:Ljava/io/BufferedReader;
    .restart local v16       #reader:Ljava/io/BufferedReader;
    goto :goto_9
.end method
