.class public Lcom/zendesk/api/model/search/GroupSearchResult;
.super Ljava/lang/Object;
.source "GroupSearchResult.java"


# static fields
.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field

.field private static final KEY_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_NAME:Ljava/lang/String; = "name"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getGroup(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Group;
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 33
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 34
    .local v1, id:Ljava/lang/Long;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/zendesk/api/model/cache/GroupCache;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 38
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    const-string v2, "updated_at"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/users/Group;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 39
    const-string v2, "created_at"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/users/Group;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 40
    const-string v2, "name"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/users/Group;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
