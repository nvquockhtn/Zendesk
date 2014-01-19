.class public Lorg/apache/http/client/entity/DeflateDecompressingEntity;
.super Lorg/apache/http/client/entity/DecompressingEntity;
.source "DeflateDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 70
    iget-object v8, p0, Lorg/apache/http/client/entity/DeflateDecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 98
    .local v7, wrapped:Ljava/io/InputStream;
    const/4 v8, 0x6

    new-array v5, v8, [B

    .line 100
    .local v5, peeked:[B
    new-instance v6, Ljava/io/PushbackInputStream;

    array-length v8, v5

    invoke-direct {v6, v7, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 102
    .local v6, pushback:Ljava/io/PushbackInputStream;
    invoke-virtual {v6, v5}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 104
    .local v2, headerLength:I
    if-ne v2, v9, :cond_0

    .line 105
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read the response"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 109
    :cond_0
    new-array v0, v11, [B

    .line 111
    .local v0, dummy:[B
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    .line 115
    .local v3, inf:Ljava/util/zip/Inflater;
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .local v4, n:I
    if-nez v4, :cond_3

    .line 116
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read the response"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v4           #n:I
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/util/zip/DataFormatException;
    invoke-virtual {v6, v5, v10, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 148
    new-instance v8, Ljava/util/zip/InflaterInputStream;

    new-instance v9, Ljava/util/zip/Inflater;

    invoke-direct {v9, v11}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v8, v6, v9}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .end local v1           #e:Ljava/util/zip/DataFormatException;
    :goto_1
    return-object v8

    .line 122
    .restart local v4       #n:I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    :cond_3
    if-ne v4, v9, :cond_5

    .line 134
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to read the response"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    :cond_4
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    invoke-virtual {v3, v5}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_0

    .line 141
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 142
    new-instance v8, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v8, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 169
    const-wide/16 v0, -0x1

    return-wide v0
.end method
