.class Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;
.super Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;
.source "LayeredSchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 42
    iput-object p1, p0, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 43
    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter "socket"
    .parameter "target"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
