.class public Lcom/zendesk/api/model/users/Groups;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Groups.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/users/Groups$GroupMemberships;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/users/Groups;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_GROUPS:Ljava/lang/String; = "groups"


# instance fields
.field private agents:Ljava/util/Map;
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

.field private agentsTmp:Ljava/util/Map;
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

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private currentPage:I

.field private groups:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "groups"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groupsTmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/Group;",
            ">;"
        }
    .end annotation
.end field

.field private hasNextPage:Z


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groups:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agents:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groupsTmp:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agentsTmp:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/zendesk/api/model/users/Groups;->currentPage:I

    .line 48
    iput-object p1, p0, Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/users/Groups;)Lcom/zendesk/api/model/BaseModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    return-void
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/zendesk/api/requester/GroupsRequester;

    iget v1, p0, Lcom/zendesk/api/model/users/Groups;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/GroupsRequester;-><init>(I)V

    return-object v0
.end method

.method public getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;
    .locals 3
    .parameter "id"

    .prologue
    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v2, p0, Lcom/zendesk/api/model/users/Groups;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/Group;

    .line 127
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/users/Groups;->groups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isAgent(Ljava/lang/Long;)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v0}, Lcom/zendesk/api/model/BaseModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onceParsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/zendesk/api/model/users/Groups;->hasNextPage:Z

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/zendesk/api/model/users/Groups;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/users/Groups;->currentPage:I

    .line 99
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/users/Groups;->groupsTmp:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groups:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groupsTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zendesk/api/model/users/Groups;->agentsTmp:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agents:Ljava/util/Map;

    .line 104
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agentsTmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    new-instance v0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;-><init>(Lcom/zendesk/api/model/users/Groups;)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->refresh()V

    goto :goto_0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v4, json:Lorg/json/JSONObject;
    const-string v6, "groups"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 80
    .local v1, groupsArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 82
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 83
    iget-object v6, p0, Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zendesk/api/model/users/Group;->getGroupFromJSON(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 84
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    iget-object v6, p0, Lcom/zendesk/api/model/users/Groups;->groupsTmp:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zendesk/api/model/users/User;

    .line 86
    .local v5, u:Lcom/zendesk/api/model/users/User;
    iget-object v6, p0, Lcom/zendesk/api/model/users/Groups;->agentsTmp:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    .end local v5           #u:Lcom/zendesk/api/model/users/User;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v6, "next_page"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/zendesk/api/model/users/Groups;->hasNextPage:Z

    .line 92
    return-void

    .line 91
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public declared-synchronized refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/zendesk/api/model/users/Groups;->currentPage:I

    .line 69
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groupsTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agentsTmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/users/Groups;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, responseHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/users/Groups;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/users/Groups;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/zendesk/api/model/users/Groups;->currentPage:I

    .line 60
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->groupsTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/zendesk/api/model/users/Groups;->agentsTmp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
