.class public Lcom/zendesk/api/model/forums/Topic;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Topic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/forums/Topic$TopicComments;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/Topic;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final KEY_FORUM_ID:Ljava/lang/String; = "forum_id"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_IS_HIGHLIGHTED:Ljava/lang/String; = "highlighted"

.field private static final KEY_IS_LOCKED:Ljava/lang/String; = "locked"

.field private static final KEY_IS_PINNED:Ljava/lang/String; = "pinned"

.field private static final KEY_POSITION:Ljava/lang/String; = "position"

.field private static final KEY_SUBMITTER_ID:Ljava/lang/String; = "submitter_id"

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TOPIC:Ljava/lang/String; = "topic"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field private final comments:Lcom/zendesk/api/model/forums/Topic$TopicComments;

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private currentTags:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forumId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "forum_id"
    .end annotation
.end field

.field private highlighted:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "highlighted"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private locked:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "locked"
    .end annotation
.end field

.field private pinned:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "pinned"
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "position"
    .end annotation
.end field

.field private submitterId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "submitter_id"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->currentTags:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/zendesk/api/model/forums/Topic$TopicComments;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Topic$TopicComments;-><init>(Lcom/zendesk/api/model/forums/Topic;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->comments:Lcom/zendesk/api/model/forums/Topic$TopicComments;

    .line 73
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->currentTags:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/zendesk/api/model/forums/Topic$TopicComments;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Topic$TopicComments;-><init>(Lcom/zendesk/api/model/forums/Topic;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->comments:Lcom/zendesk/api/model/forums/Topic$TopicComments;

    .line 82
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/forums/Topic;->parseJSON(Lorg/json/JSONObject;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/forums/Topic;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;

    return-object v0
.end method

.method private parseJSON(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    .line 87
    const-string v5, "topic"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    .local v4, topic:Lorg/json/JSONObject;
    if-nez v4, :cond_0

    move-object v4, p1

    .line 91
    :cond_0
    const-string v5, "position"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->position:Ljava/lang/Integer;

    .line 92
    const-string v5, "locked"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->locked:Ljava/lang/Boolean;

    .line 93
    const-string v5, "created_at"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 94
    const-string v5, "title"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->title:Ljava/lang/String;

    .line 95
    const-string v5, "pinned"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->pinned:Ljava/lang/Boolean;

    .line 96
    const-string v5, "body"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->body:Ljava/lang/String;

    .line 97
    const-string v5, "updated_at"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 98
    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;

    .line 99
    const-string v5, "forum_id"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->forumId:Ljava/lang/Long;

    .line 100
    const-string v5, "submitter_id"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->submitterId:Ljava/lang/Long;

    .line 101
    const-string v5, "highlighted"

    invoke-static {v4, v5}, Lcom/zendesk/api/model/forums/Topic;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/forums/Topic;->highlighted:Ljava/lang/Boolean;

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "tags"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "tags"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 108
    .local v2, tagsArray:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 110
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0           #i:I
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #tagsArray:Lorg/json/JSONArray;
    :cond_2
    iput-object v3, p0, Lcom/zendesk/api/model/forums/Topic;->currentTags:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/zendesk/api/requester/TopicRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/TopicRequester;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Lcom/zendesk/api/model/forums/Topic$TopicComments;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->comments:Lcom/zendesk/api/model/forums/Topic$TopicComments;

    return-object v0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getCurrentTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->currentTags:Ljava/util/List;

    return-object v0
.end method

.method public getForumId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->forumId:Ljava/lang/Long;

    return-object v0
.end method

.method public getHighlighted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->highlighted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->locked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPinned()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->pinned:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubmitterId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->submitterId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Topic;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/forums/Topic;->parseJSON(Lorg/json/JSONObject;)V

    .line 128
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->body:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 182
    return-void
.end method

.method public setForumId(Ljava/lang/Long;)V
    .locals 0
    .parameter "forumId"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->forumId:Ljava/lang/Long;

    .line 291
    return-void
.end method

.method public setHighlighted(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "highlighted"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->highlighted:Ljava/lang/Boolean;

    .line 327
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->id:Ljava/lang/Long;

    .line 273
    return-void
.end method

.method public setLocked(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->locked:Ljava/lang/Boolean;

    .line 164
    return-void
.end method

.method public setPinned(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "pinned"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->pinned:Ljava/lang/Boolean;

    .line 219
    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->position:Ljava/lang/Integer;

    .line 146
    return-void
.end method

.method public setSubmitterId(Ljava/lang/Long;)V
    .locals 0
    .parameter "submitterId"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->submitterId:Ljava/lang/Long;

    .line 309
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->title:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Topic;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 255
    return-void
.end method
