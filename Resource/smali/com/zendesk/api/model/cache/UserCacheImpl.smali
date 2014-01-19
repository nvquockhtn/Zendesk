.class public Lcom/zendesk/api/model/cache/UserCacheImpl;
.super Ljava/lang/Object;
.source "UserCacheImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/cache/UserCache;


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private localId:J

.field private final users:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 2
    .parameter "baseModel"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->users:Ljava/util/Map;

    .line 20
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->localId:J

    .line 30
    iput-object p1, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 31
    return-void
.end method

.method private declared-synchronized getNextLocalId()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->localId:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->localId:J

    .line 51
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->localId:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;
    .locals 5
    .parameter "userId"

    .prologue
    .line 35
    monitor-enter p0

    const/4 v1, 0x0

    .line 36
    .local v1, user:Lcom/zendesk/api/model/users/User;
    if-nez p1, :cond_1

    .line 37
    :try_start_0
    new-instance v2, Lcom/zendesk/api/model/users/User;

    iget-object v3, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {p0}, Lcom/zendesk/api/model/cache/UserCacheImpl;->getNextLocalId()Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zendesk/api/model/users/User;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v1           #user:Lcom/zendesk/api/model/users/User;
    .local v2, user:Lcom/zendesk/api/model/users/User;
    :try_start_1
    iget-object v3, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->users:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 46
    .end local v2           #user:Lcom/zendesk/api/model/users/User;
    .restart local v1       #user:Lcom/zendesk/api/model/users/User;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 40
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->users:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/zendesk/api/model/users/User;

    move-object v1, v0

    .line 41
    if-nez v1, :cond_0

    .line 42
    new-instance v2, Lcom/zendesk/api/model/users/User;

    iget-object v3, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v2, v3, p1}, Lcom/zendesk/api/model/users/User;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .end local v1           #user:Lcom/zendesk/api/model/users/User;
    .restart local v2       #user:Lcom/zendesk/api/model/users/User;
    :try_start_3
    iget-object v3, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->users:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .end local v2           #user:Lcom/zendesk/api/model/users/User;
    .restart local v1       #user:Lcom/zendesk/api/model/users/User;
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit p0

    throw v3

    .end local v1           #user:Lcom/zendesk/api/model/users/User;
    .restart local v2       #user:Lcom/zendesk/api/model/users/User;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #user:Lcom/zendesk/api/model/users/User;
    .restart local v1       #user:Lcom/zendesk/api/model/users/User;
    goto :goto_1
.end method

.method public getUsers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/cache/UserCacheImpl;->users:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
