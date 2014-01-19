.class public Lcom/zendesk/api/model/search/TopicSearchResult;
.super Ljava/lang/Object;
.source "TopicSearchResult.java"


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field

.field private static final KEY_FORUM_ID:Ljava/lang/String; = "forum_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "forum_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_HIGHLIGHTED:Ljava/lang/String; = "highlighted"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "highlighted"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_LOCKED:Ljava/lang/String; = "locked"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "locked"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "pinned"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field private static final KEY_POSITION:Ljava/lang/String; = "position"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "position"
        type = Ljava/lang/Integer;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_SUBMITTER_ID:Ljava/lang/String; = "submitter_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "submitter_id"
        type = Ljava/lang/Long;
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

.field private static final KEY_TITLE:Ljava/lang/String; = "title"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTopic(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/forums/Topic;
    .locals 6
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 55
    const-string v5, "id"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 56
    .local v1, id:Ljava/lang/Long;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 81
    :cond_0
    return-object v3

    .line 58
    :cond_1
    new-instance v3, Lcom/zendesk/api/model/forums/Topic;

    invoke-direct {v3, p1}, Lcom/zendesk/api/model/forums/Topic;-><init>(Lorg/json/JSONObject;)V

    .line 60
    .local v3, t:Lcom/zendesk/api/model/forums/Topic;
    const-string v5, "position"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setPosition(Ljava/lang/Integer;)V

    .line 61
    const-string v5, "locked"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setLocked(Ljava/lang/Boolean;)V

    .line 62
    const-string v5, "created_at"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 63
    const-string v5, "title"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setTitle(Ljava/lang/String;)V

    .line 64
    const-string v5, "pinned"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setPinned(Ljava/lang/Boolean;)V

    .line 65
    const-string v5, "body"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setBody(Ljava/lang/String;)V

    .line 66
    const-string v5, "updated_at"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 67
    const-string v5, "forum_id"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setForumId(Ljava/lang/Long;)V

    .line 68
    const-string v5, "submitter_id"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setSubmitterId(Ljava/lang/Long;)V

    .line 69
    const-string v5, "highlighted"

    invoke-static {p1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zendesk/api/model/forums/Topic;->setHighlighted(Ljava/lang/Boolean;)V

    .line 71
    const-string v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {v3}, Lcom/zendesk/api/model/forums/Topic;->getCurrentTags()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 73
    const-string v5, "tags"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 74
    .local v4, tagsArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 75
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v3}, Lcom/zendesk/api/model/forums/Topic;->getCurrentTags()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
