.class public interface abstract Lcom/zendesk/api/model/cache/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"


# virtual methods
.method public abstract getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;
.end method

.method public abstract getUsers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation
.end method
