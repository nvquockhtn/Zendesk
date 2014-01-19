.class public Lcom/zendesk/api/model/forums/Forum;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Forum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/forums/Forum$ForumTopics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/forums/Forum;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY_ACCESS:Ljava/lang/String; = "access"

.field static final KEY_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field static final KEY_ENTRIES_COUNT:Ljava/lang/String; = "entries_count"

.field static final KEY_FORUM:Ljava/lang/String; = "forum"

.field static final KEY_FORUM_TYPE:Ljava/lang/String; = "forum_type"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IS_LOCKED:Ljava/lang/String; = "locked"

.field static final KEY_LOCALE_ID:Ljava/lang/String; = "locale_id"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_ORGANIZATION_ID:Ljava/lang/String; = "organization_id"

.field static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private access:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "access"
    .end annotation
.end field

.field private categoryId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "category_id"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "description"
    .end annotation
.end field

.field private forumType:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "forum_type"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private localeId:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "locale_id"
    .end annotation
.end field

.field private locked:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "locked"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
    .end annotation
.end field

.field private organizationId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "organization_id"
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "position"
    .end annotation
.end field

.field private topics:Lcom/zendesk/api/model/forums/Forum$ForumTopics;

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
    .line 70
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 63
    new-instance v0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Forum$ForumTopics;-><init>(Lcom/zendesk/api/model/forums/Forum;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->topics:Lcom/zendesk/api/model/forums/Forum$ForumTopics;

    .line 71
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 63
    new-instance v0, Lcom/zendesk/api/model/forums/Forum$ForumTopics;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/forums/Forum$ForumTopics;-><init>(Lcom/zendesk/api/model/forums/Forum;)V

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->topics:Lcom/zendesk/api/model/forums/Forum$ForumTopics;

    .line 80
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/forums/Forum;->parse(Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/forums/Forum;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;

    return-object v0
.end method

.method private parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 97
    const-string v0, "position"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->position:Ljava/lang/Integer;

    .line 98
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->name:Ljava/lang/String;

    .line 99
    const-string v0, "locked"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->locked:Ljava/lang/Boolean;

    .line 100
    const-string v0, "updated_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 101
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;

    .line 102
    const-string v0, "category_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->categoryId:Ljava/lang/Long;

    .line 103
    const-string v0, "locale_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->localeId:Ljava/lang/Integer;

    .line 104
    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->description:Ljava/lang/String;

    .line 105
    const-string v0, "organization_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->organizationId:Ljava/lang/Long;

    .line 106
    const-string v0, "forum_type"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->forumType:Ljava/lang/String;

    .line 107
    const-string v0, "access"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/forums/Forum;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->access:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/zendesk/api/requester/ForumRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/ForumRequester;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->access:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->categoryId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getForumType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->forumType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->locked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->organizationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTopics()Lcom/zendesk/api/model/forums/Forum$ForumTopics;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->topics:Lcom/zendesk/api/model/forums/Forum$ForumTopics;

    return-object v0
.end method

.method public getTranslationLocaleId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->localeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zendesk/api/model/forums/Forum;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "forum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    .local v0, forum:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/zendesk/api/model/forums/Forum;->parse(Lorg/json/JSONObject;)V

    .line 94
    return-void
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 0
    .parameter "access"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->access:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setCategoryId(Ljava/lang/Long;)V
    .locals 0
    .parameter "categoryId"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->categoryId:Ljava/lang/Long;

    .line 237
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->description:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setForumType(Ljava/lang/String;)V
    .locals 0
    .parameter "forumType"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->forumType:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->id:Ljava/lang/Long;

    .line 182
    return-void
.end method

.method public setLocked(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->locked:Ljava/lang/Boolean;

    .line 144
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->name:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setOrganizationId(Ljava/lang/Long;)V
    .locals 0
    .parameter "organizationId"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->organizationId:Ljava/lang/Long;

    .line 200
    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->position:Ljava/lang/Integer;

    .line 126
    return-void
.end method

.method public setTopics(Lcom/zendesk/api/model/forums/Forum$ForumTopics;)V
    .locals 0
    .parameter "topics"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->topics:Lcom/zendesk/api/model/forums/Forum$ForumTopics;

    .line 315
    return-void
.end method

.method public setTranslationLocaleId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "translationLocaleId"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->localeId:Ljava/lang/Integer;

    .line 255
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/zendesk/api/model/forums/Forum;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 163
    return-void
.end method
