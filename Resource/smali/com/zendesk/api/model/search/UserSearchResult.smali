.class public Lcom/zendesk/api/model/search/UserSearchResult;
.super Ljava/lang/Object;
.source "UserSearchResult.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "active"
        type = Ljava/lang/Boolean;
    .end annotation
.end field

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

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "email"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_EXTERNAL_ID:Ljava/lang/String; = "external_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "external_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_LAST_LOGIN_AT:Ljava/lang/String; = "last_login_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "last_login_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_LOCALE_ID:Ljava/lang/String; = "locale_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "locale_id"
        type = Ljava/lang/Integer;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_NAME:Ljava/lang/String; = "name"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_NOTES:Ljava/lang/String; = "notes"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "notes"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_ORGANIZATION_ID:Ljava/lang/String; = "organization_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "organization_id"
        type = Ljava/lang/Long;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "phone"
        type = Ljava/lang/String;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_PHOTO:Ljava/lang/String; = "photo"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "photo"
        type = Ljava/lang/Object;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_ROLE:Ljava/lang/String; = "role"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "role"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "tags"
        type = Ljava/util/List;
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private static final KEY_TIME_ZONE:Ljava/lang/String; = "time_zone"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "time_zone"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
        type = Lcom/zendesk/api/model/shared/ZDDate;
    .end annotation
.end field

.field private static final KEY_VERIFIED:Ljava/lang/String; = "verified"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "verified"
        type = Ljava/lang/Boolean;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getUser(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/User;
    .locals 10
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 69
    const-string v7, "id"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 70
    .local v2, id:Ljava/lang/Long;
    if-nez v2, :cond_1

    const/4 v6, 0x0

    .line 110
    :cond_0
    return-object v6

    .line 72
    :cond_1
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v6

    .line 74
    .local v6, u:Lcom/zendesk/api/model/users/User;
    const-string v7, "active"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setActive(Ljava/lang/Boolean;)V

    .line 75
    const-string v7, "created_at"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 76
    const-string v7, "details"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setDetails(Ljava/lang/String;)V

    .line 77
    const-string v7, "email"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setEmail(Ljava/lang/String;)V

    .line 78
    const-string v7, "external_id"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setExternalId(Ljava/lang/String;)V

    .line 79
    const-string v7, "last_login_at"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setLastLogin(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 80
    const-string v7, "locale_id"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setLocaleId(Ljava/lang/String;)V

    .line 81
    const-string v7, "name"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setName(Ljava/lang/String;)V

    .line 82
    const-string v7, "notes"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setNotes(Ljava/lang/String;)V

    .line 83
    const-string v7, "organization_id"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setOrganizationId(Ljava/lang/Long;)V

    .line 84
    const-string v7, "phone"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setPhone(Ljava/lang/String;)V

    .line 85
    const-string v7, "time_zone"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setTimezone(Ljava/lang/String;)V

    .line 86
    const-string v7, "updated_at"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 87
    const-string v7, "verified"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setVerified(Ljava/lang/Boolean;)V

    .line 88
    const-string v7, "role"

    invoke-static {p1, v7}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zendesk/api/model/users/Role;->get(Ljava/lang/String;)Lcom/zendesk/api/model/users/Role;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setRole(Lcom/zendesk/api/model/users/Role;)V

    .line 90
    const-string v7, "photo"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    .local v3, photoAttach:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 92
    new-instance v0, Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {v0, v3}, Lcom/zendesk/api/model/shared/Attachment;-><init>(Lorg/json/JSONObject;)V

    .line 93
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setPhotoURL(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getPhotoURL()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 95
    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getPhotoURL()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_thumb"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zendesk/api/model/users/User;->setPhotoURL(Ljava/lang/String;)V

    .line 99
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    :cond_2
    const-string v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getCurrentTags()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 101
    const-string v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 102
    .local v5, tagsArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 103
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 105
    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getCurrentTags()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
