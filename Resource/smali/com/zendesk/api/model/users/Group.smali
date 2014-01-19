.class public Lcom/zendesk/api/model/users/Group;
.super Ljava/lang/Object;
.source "Group.java"


# static fields
.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Group;->users:Ljava/util/List;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/zendesk/api/model/users/Group;->update(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .parameter "groupId"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/Group;->users:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/zendesk/api/model/users/Group;->id:Ljava/lang/Long;

    .line 55
    return-void
.end method

.method public static getGroupFromJSON(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Group;
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, u:Lcom/zendesk/api/model/users/Group;
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v1

    invoke-static {p1}, Lcom/zendesk/api/model/users/Group;->getId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zendesk/api/model/cache/GroupCache;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 85
    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/model/users/Group;->update(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/zendesk/api/model/users/Group;

    .end local v0           #u:Lcom/zendesk/api/model/users/Group;
    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/model/users/Group;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .restart local v0       #u:Lcom/zendesk/api/model/users/Group;
    goto :goto_0
.end method

.method private static getId(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 1
    .parameter "json"

    .prologue
    .line 71
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private update(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 58
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Group;->id:Ljava/lang/Long;

    .line 59
    const-string v0, "created_at"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Group;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 60
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Group;->name:Ljava/lang/String;

    .line 61
    const-string v0, "updated_at"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Group;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 62
    return-void
.end method


# virtual methods
.method public addUser(Lcom/zendesk/api/model/users/User;)V
    .locals 1
    .parameter "u"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/zendesk/api/model/users/Group;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public containsUser(Ljava/lang/Long;)Z
    .locals 3
    .parameter "userId"

    .prologue
    .line 99
    if-eqz p1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/zendesk/api/model/users/Group;->users:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/users/User;

    .line 101
    .local v1, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 104
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Lcom/zendesk/api/model/users/User;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zendesk/api/model/users/Group;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zendesk/api/model/users/Group;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zendesk/api/model/users/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zendesk/api/model/users/Group;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/users/Group;->users:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/zendesk/api/model/users/Group;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 150
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zendesk/api/model/users/Group;->id:Ljava/lang/Long;

    .line 132
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/zendesk/api/model/users/Group;->name:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/zendesk/api/model/users/Group;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 186
    return-void
.end method
