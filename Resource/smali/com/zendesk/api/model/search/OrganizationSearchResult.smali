.class public Lcom/zendesk/api/model/search/OrganizationSearchResult;
.super Ljava/lang/Object;
.source "OrganizationSearchResult.java"


# static fields
.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field

.field private static final KEY_DETAILS:Ljava/lang/String; = "details"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "details"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_id"
        type = Ljava/lang/Long;
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

.field private static final KEY_NOTES:Ljava/lang/String; = "notes"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "notes"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_SHARED_COMMENTS:Ljava/lang/String; = "shared_comments"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "shared_comments"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_SHARED_TICKETS:Ljava/lang/String; = "shared_tickets"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "shared_tickets"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Ljava/lang/String;
        path = "tags"
        type = Ljava/util/List;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOrganization(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Organization;
    .locals 7
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 50
    const-string v6, "id"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 51
    .local v1, id:Ljava/lang/Long;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 77
    :cond_0
    :goto_0
    return-object v2

    .line 53
    :cond_1
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getOrganizationCache()Lcom/zendesk/api/model/cache/OrganizationCache;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/zendesk/api/model/cache/OrganizationCache;->getOrganization(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Organization;

    move-result-object v2

    .line 55
    .local v2, o:Lcom/zendesk/api/model/users/Organization;
    const-string v6, "updated_at"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 56
    const-string v6, "created_at"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 57
    const-string v6, "name"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setName(Ljava/lang/String;)V

    .line 58
    const-string v6, "group_id"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setGroupId(Ljava/lang/Long;)V

    .line 59
    const-string v6, "details"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setDetails(Ljava/lang/String;)V

    .line 60
    const-string v6, "notes"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setNotes(Ljava/lang/String;)V

    .line 61
    const-string v6, "shared_comments"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setSharedComments(Ljava/lang/Boolean;)V

    .line 62
    const-string v6, "shared_tickets"

    invoke-static {p1, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setShared(Ljava/lang/Boolean;)V

    .line 64
    const-string v6, "tags"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 66
    .local v5, tagsArray:Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 69
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v3           #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/zendesk/api/model/users/Organization;->setCurrentTags(Ljava/lang/String;)V

    goto :goto_0
.end method
