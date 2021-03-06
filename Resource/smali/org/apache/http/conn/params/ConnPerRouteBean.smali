.class public final Lorg/apache/http/conn/params/ConnPerRouteBean;
.super Ljava/lang/Object;
.source "ConnPerRouteBean.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x2


# instance fields
.field private volatile defaultMax:I

.field private final maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "defaultMax"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public getDefaultMax()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    return v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    return v0
.end method

.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 3
    .parameter "route"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP route may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, max:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    goto :goto_0
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 80
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput p1, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->defaultMax:I

    .line 85
    return-void
.end method

.method public setMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 2
    .parameter "route"
    .parameter "max"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public setMaxForRoutes(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 117
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnPerRouteBean;->maxPerHostMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
