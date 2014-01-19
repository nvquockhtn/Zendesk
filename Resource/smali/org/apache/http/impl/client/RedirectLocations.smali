.class public Lorg/apache/http/impl/client/RedirectLocations;
.super Ljava/lang/Object;
.source "RedirectLocations.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final unique:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/net/URI;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public contains(Ljava/net/URI;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public remove(Ljava/net/URI;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 75
    iget-object v3, p0, Lorg/apache/http/impl/client/RedirectLocations;->unique:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 76
    .local v2, removed:Z
    if-eqz v2, :cond_1

    .line 77
    iget-object v3, p0, Lorg/apache/http/impl/client/RedirectLocations;->all:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/URI;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 80
    .local v0, current:Ljava/net/URI;
    invoke-virtual {v0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 85
    .end local v0           #current:Ljava/net/URI;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/URI;>;"
    :cond_1
    return v2
.end method
