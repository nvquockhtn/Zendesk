.class public abstract Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;
.implements Lorg/apache/http/io/BufferInfo;


# instance fields
.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private charset:Ljava/lang/String;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 71
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 74
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    return-void
.end method

.method private lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 5
    .parameter "charbuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 292
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 293
    .local v0, l:I
    if-lez v0, :cond_1

    .line 294
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 295
    add-int/lit8 v0, v0, -0x1

    .line 296
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;->setLength(I)V

    .line 299
    :cond_0
    if-lez v0, :cond_1

    .line 300
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 301
    add-int/lit8 v0, v0, -0x1

    .line 302
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;->setLength(I)V

    .line 306
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 307
    iget-boolean v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1, v2, v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/ByteArrayBuffer;II)V

    .line 316
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 317
    return v0

    .line 312
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 313
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 314
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 5
    .parameter "charbuffer"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 324
    .local v1, off:I
    add-int/lit8 v3, p2, 0x1

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 325
    if-lez p2, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    add-int/lit8 v4, p2, -0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 327
    add-int/lit8 p2, p2, -0x1

    .line 329
    :cond_0
    sub-int v0, p2, v1

    .line 330
    .local v0, len:I
    iget-boolean v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v3, :cond_1

    .line 331
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {p1, v3, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 339
    :goto_0
    return v0

    .line 335
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 336
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private locateLF()I
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_1

    .line 212
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 216
    .end local v0           #i:I
    :goto_1
    return v0

    .line 211
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method protected createTransportMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method protected fillBuffer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 138
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-lez v4, :cond_1

    .line 139
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v1, v4, v5

    .line 140
    .local v1, len:I
    if-lez v1, :cond_0

    .line 141
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v4, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_0
    iput v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 144
    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 147
    .end local v1           #len:I
    :cond_1
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 148
    .local v2, off:I
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v4, v4

    sub-int v1, v4, v2

    .line 149
    .restart local v1       #len:I
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v4, v5, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 150
    .local v0, l:I
    if-ne v0, v3, :cond_2

    move v0, v3

    .line 155
    .end local v0           #l:I
    :goto_0
    return v0

    .line 153
    .restart local v0       #l:I
    :cond_2
    add-int v3, v2, v0

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 154
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected hasBufferedData()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V
    .locals 3
    .parameter "instream"
    .parameter "buffersize"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-gtz p2, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    if-nez p3, :cond_2

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    .line 96
    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    .line 97
    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 98
    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 99
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 100
    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 103
    const-string v0, "http.connection.max-line-length"

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 104
    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    .line 105
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->createTransportMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 106
    return-void
.end method

.method public length()I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, noRead:I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    .line 167
    if-ne v0, v1, :cond_0

    .line 171
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    .local v0, chunk:I
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    goto :goto_0

    .line 186
    .end local v0           #chunk:I
    :cond_1
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    if-le p3, v2, :cond_2

    .line 187
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v1

    .line 192
    .local v1, noRead:I
    if-ne v1, v0, :cond_2

    goto :goto_0

    .line 196
    .end local v1           #noRead:I
    :cond_3
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 197
    .restart local v0       #chunk:I
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    goto :goto_0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 8
    .parameter "charbuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Char array buffer may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_0
    const/4 v2, 0x0

    .line 239
    .local v2, noRead:I
    const/4 v3, 0x1

    .line 240
    .local v3, retry:Z
    :cond_1
    if-eqz v3, :cond_7

    .line 242
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->locateLF()I

    move-result v0

    .line 243
    .local v0, i:I
    if-eq v0, v4, :cond_5

    .line 245
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v4

    .line 273
    .end local v0           #i:I
    :cond_2
    :goto_0
    return v4

    .line 249
    .restart local v0       #i:I
    :cond_3
    const/4 v3, 0x0

    .line 250
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v1, v5, v6

    .line 251
    .local v1, len:I
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-virtual {v5, v6, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 252
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 265
    .end local v1           #len:I
    :cond_4
    :goto_1
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lt v5, v6, :cond_1

    .line 266
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Maximum line length limit exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 255
    :cond_5
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 256
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v1, v5, v6

    .line 257
    .restart local v1       #len:I
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-virtual {v5, v6, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 258
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iput v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 260
    .end local v1           #len:I
    :cond_6
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v2

    .line 261
    if-ne v2, v4, :cond_4

    .line 262
    const/4 v3, 0x0

    goto :goto_1

    .line 269
    .end local v0           #i:I
    :cond_7
    if-ne v2, v4, :cond_8

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 273
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v4

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 344
    .local v0, charbuffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 345
    .local v1, l:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 346
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
