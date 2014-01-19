.class public Lcom/zendesk/api/model/cache/GroupCacheImpl;
.super Ljava/lang/Object;
.source "GroupCacheImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/cache/GroupCache;


# instance fields
.field private final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/zendesk/api/model/users/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/cache/GroupCacheImpl;->groups:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zendesk/api/model/cache/GroupCacheImpl;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    return-void
.end method

.method public declared-synchronized getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/zendesk/api/model/cache/GroupCacheImpl;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/Group;

    .line 20
    .local v0, group:Lcom/zendesk/api/model/users/Group;
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/zendesk/api/model/users/Group;

    .end local v0           #group:Lcom/zendesk/api/model/users/Group;
    invoke-direct {v0, p1}, Lcom/zendesk/api/model/users/Group;-><init>(Ljava/lang/Long;)V

    .line 22
    .restart local v0       #group:Lcom/zendesk/api/model/users/Group;
    iget-object v1, p0, Lcom/zendesk/api/model/cache/GroupCacheImpl;->groups:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    monitor-exit p0

    return-object v0

    .line 19
    .end local v0           #group:Lcom/zendesk/api/model/users/Group;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
