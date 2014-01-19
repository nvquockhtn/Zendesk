.class public Lcom/zendesk/api/model/users/User;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/users/User$UserIdentity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/users/User;",
        ">;"
    }
.end annotation


# static fields
.field private static final AVATAR_REQUEST:Ljava/lang/String; = "avatar-request"

.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_DETAILS:Ljava/lang/String; = "details"

.field static final KEY_EMAIL:Ljava/lang/String; = "email"

.field static final KEY_EXTERNAL_ID:Ljava/lang/String; = "external_id"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IDENTITIES:Ljava/lang/String; = "identities"

.field static final KEY_IS_ACTIVE:Ljava/lang/String; = "active"

.field static final KEY_IS_VERIFIED:Ljava/lang/String; = "verified"

.field static final KEY_LAST_LOGIN:Ljava/lang/String; = "last_login_at"

.field static final KEY_LOCALE_ID:Ljava/lang/String; = "locale_id"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_NOTES:Ljava/lang/String; = "notes"

.field static final KEY_ORGANIZATION:Ljava/lang/String; = "organizations"

.field static final KEY_ORGANIZATION_ID:Ljava/lang/String; = "organization_id"

.field static final KEY_PHONE:Ljava/lang/String; = "phone"

.field static final KEY_PHOTO:Ljava/lang/String; = "photo"

.field static final KEY_ROLES:Ljava/lang/String; = "role"

.field static final KEY_TAGS:Ljava/lang/String; = "tags"

.field static final KEY_TIME_ZONE:Ljava/lang/String; = "time_zone"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field private static final USER_AVATARS_FOLDER:Ljava/lang/String; = "/user_avatars"

.field public static final ZENDESK_SYSTEM_USER_ID:Ljava/lang/Long;


# instance fields
.field private active:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "active"
    .end annotation
.end field

.field private avatarState:Lcom/zendesk/api/model/shared/DownloadState;

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private final currentTags:Ljava/util/List;
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

.field private details:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "details"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "email"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private externalId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "external_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final identities:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "identities"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User$UserIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private identityString:Ljava/lang/String;

.field private lastLogin:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "last_login_at"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private localFilePath:Ljava/lang/String;

.field private localeId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "locale_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
    .end annotation
.end field

.field private notes:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "notes"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private organization:Lcom/zendesk/api/model/users/Organization;

.field private organizationId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "organization_id"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "phone"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private photoURL:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "photo"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private role:Lcom/zendesk/api/model/users/Role;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "role"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private timezone:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "time_zone"
    .end annotation
.end field

.field private twitterAccount:Ljava/lang/String;

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field

.field private userCacheDirInitialized:Z

.field private userId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private userType:Lcom/zendesk/api/model/users/UserType;

.field private verified:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "verified"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/zendesk/api/model/users/User;->ZENDESK_SYSTEM_USER_ID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V
    .locals 4
    .parameter "baseModel"
    .parameter "userId"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->currentTags:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->groups:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->AVAILABLE:Lcom/zendesk/api/model/shared/DownloadState;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    .line 112
    sget-object v0, Lcom/zendesk/api/model/users/UserType;->STANDARD:Lcom/zendesk/api/model/users/UserType;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    .line 125
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 126
    iput-object p2, p0, Lcom/zendesk/api/model/users/User;->userId:Ljava/lang/Long;

    .line 128
    sget-object v0, Lcom/zendesk/api/model/users/User;->ZENDESK_SYSTEM_USER_ID:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/zendesk/api/model/users/UserType;->SYSTEM:Lcom/zendesk/api/model/users/UserType;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    .line 130
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    .line 131
    sget-object v0, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->role:Lcom/zendesk/api/model/users/Role;

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 134
    sget-object v0, Lcom/zendesk/api/model/users/UserType;->LOCAL:Lcom/zendesk/api/model/users/UserType;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    .line 135
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->currentTags:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->groups:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->AVAILABLE:Lcom/zendesk/api/model/shared/DownloadState;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    .line 112
    sget-object v0, Lcom/zendesk/api/model/users/UserType;->STANDARD:Lcom/zendesk/api/model/users/UserType;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    .line 169
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 170
    invoke-direct {p0, p2}, Lcom/zendesk/api/model/users/User;->parseResponse(Lorg/json/JSONObject;)V

    .line 171
    return-void
.end method

.method static synthetic access$002(Lcom/zendesk/api/model/users/User;Lcom/zendesk/api/model/shared/DownloadState;)Lcom/zendesk/api/model/shared/DownloadState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/users/User;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/users/User;->respondSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/zendesk/api/model/users/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->localFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/zendesk/api/model/users/User;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zendesk/api/model/users/User;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/zendesk/api/model/users/User;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static autoComplete(Ljava/lang/String;Lcom/zendesk/api/model/BaseModel;)Ljava/util/List;
    .locals 15
    .parameter "query"
    .parameter "baseModel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/api/model/BaseModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 875
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v11, users:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/users/User;>;"
    new-instance v6, Lcom/zendesk/api/requester/UserAutoCompleteRequester;

    invoke-direct {v6, p0}, Lcom/zendesk/api/requester/UserAutoCompleteRequester;-><init>(Ljava/lang/String;)V

    .line 878
    .local v6, req:Lcom/zendesk/api/requester/UserAutoCompleteRequester;
    invoke-virtual {v6}, Lcom/zendesk/api/requester/UserAutoCompleteRequester;->execute()V

    .line 880
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/zendesk/api/requester/UserAutoCompleteRequester;->getResponseString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 882
    .local v2, json:Lorg/json/JSONObject;
    const-string v13, "users"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 884
    .local v12, usersArray:Lorg/json/JSONArray;
    if-eqz v12, :cond_2

    .line 886
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v1, v13, :cond_2

    .line 888
    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 890
    .local v9, user:Lorg/json/JSONObject;
    const-string v13, "id"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 892
    .local v10, userId:Ljava/lang/Long;
    invoke-interface/range {p1 .. p1}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v13

    invoke-interface {v13, v10}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v8

    .line 894
    .local v8, u:Lcom/zendesk/api/model/users/User;
    const-string v13, "details"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setDetails(Ljava/lang/String;)V

    .line 895
    const-string v13, "email"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setEmail(Ljava/lang/String;)V

    .line 896
    const-string v13, "external_id"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setExternalId(Ljava/lang/String;)V

    .line 897
    const-string v13, "active"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setActive(Ljava/lang/Boolean;)V

    .line 898
    const-string v13, "verified"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setVerified(Ljava/lang/Boolean;)V

    .line 899
    const-string v13, "locale_id"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setLocaleId(Ljava/lang/String;)V

    .line 900
    const-string v13, "name"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setName(Ljava/lang/String;)V

    .line 901
    const-string v13, "notes"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setNotes(Ljava/lang/String;)V

    .line 902
    const-string v13, "organization_id"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setOrganizationId(Ljava/lang/Long;)V

    .line 903
    const-string v13, "phone"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setPhone(Ljava/lang/String;)V

    .line 904
    const-string v13, "time_zone"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setTimezone(Ljava/lang/String;)V

    .line 905
    const-string v13, "role"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zendesk/api/model/users/Role;->get(Ljava/lang/String;)Lcom/zendesk/api/model/users/Role;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setRole(Lcom/zendesk/api/model/users/Role;)V

    .line 906
    const-string v13, "created_at"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 907
    const-string v13, "last_login_at"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setLastLogin(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 908
    const-string v13, "updated_at"

    invoke-static {v9, v13}, Lcom/zendesk/api/model/users/User;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V

    .line 911
    const-string v13, "photo"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 912
    .local v4, photoAttach:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 913
    new-instance v0, Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {v0, v4}, Lcom/zendesk/api/model/shared/Attachment;-><init>(Lorg/json/JSONObject;)V

    .line 914
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 915
    .local v5, photoURL:Ljava/lang/String;
    const-string v13, "_thumb"

    const-string v14, ""

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/zendesk/api/model/users/User;->setPhotoURL(Ljava/lang/String;)V

    .line 918
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    .end local v5           #photoURL:Ljava/lang/String;
    :cond_0
    const-string v13, "tags"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 919
    .local v7, t:Lorg/json/JSONArray;
    if-eqz v7, :cond_1

    .line 920
    invoke-virtual {v8}, Lcom/zendesk/api/model/users/User;->getCurrentTags()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 921
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_1

    .line 922
    invoke-virtual {v8}, Lcom/zendesk/api/model/users/User;->getCurrentTags()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 926
    .end local v3           #k:I
    :cond_1
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 929
    .end local v1           #i:I
    .end local v4           #photoAttach:Lorg/json/JSONObject;
    .end local v7           #t:Lorg/json/JSONArray;
    .end local v8           #u:Lcom/zendesk/api/model/users/User;
    .end local v9           #user:Lorg/json/JSONObject;
    .end local v10           #userId:Ljava/lang/Long;
    :cond_2
    return-object v11
.end method

.method private getAvatarFilenameFromURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    const-string v1, "http://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBaseCacheDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/zendesk/api/model/users/User;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getBaseCacheDir()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    iget-boolean v1, p0, Lcom/zendesk/api/model/users/User;->userCacheDirInitialized:Z

    if-nez v1, :cond_0

    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zendesk/api/model/users/User;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v2}, Lcom/zendesk/api/model/BaseModel;->getBaseCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/user_avatars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 147
    .end local v0           #f:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/zendesk/api/model/users/User;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v1}, Lcom/zendesk/api/model/BaseModel;->getBaseCacheDir()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The base cache directory has not been set on Attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getId(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 1
    .parameter "json"

    .prologue
    .line 273
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/zendesk/api/model/users/User;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getUser(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;
    .locals 5
    .parameter "baseModel"
    .parameter "id"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, u:Lcom/zendesk/api/model/users/User;
    if-eqz p1, :cond_0

    .line 304
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    .line 313
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    new-instance v0, Lcom/zendesk/api/model/users/User;

    .end local v0           #u:Lcom/zendesk/api/model/users/User;
    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/model/users/User;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 308
    .restart local v0       #u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/users/User;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    goto :goto_0
.end method

.method public static getUserFromJSON(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/User;
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, u:Lcom/zendesk/api/model/users/User;
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v1

    invoke-static {p1}, Lcom/zendesk/api/model/users/User;->getId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p1}, Lcom/zendesk/api/model/users/User;->update(Lorg/json/JSONObject;)V

    .line 291
    :goto_0
    return-object v0

    .line 289
    :cond_0
    new-instance v0, Lcom/zendesk/api/model/users/User;

    .end local v0           #u:Lcom/zendesk/api/model/users/User;
    invoke-direct {v0, p0, p1}, Lcom/zendesk/api/model/users/User;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .restart local v0       #u:Lcom/zendesk/api/model/users/User;
    goto :goto_0
.end method

.method private parseResponse(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "json"

    .prologue
    .line 195
    const-string v9, "user"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 197
    .local v8, user:Lorg/json/JSONObject;
    if-nez v8, :cond_0

    move-object v8, p1

    .line 199
    :cond_0
    const-string v9, "id"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->userId:Ljava/lang/Long;

    .line 200
    const-string v9, "details"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->details:Ljava/lang/String;

    .line 201
    const-string v9, "email"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->email:Ljava/lang/String;

    .line 202
    const-string v9, "external_id"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->externalId:Ljava/lang/String;

    .line 203
    const-string v9, "active"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->active:Ljava/lang/Boolean;

    .line 204
    const-string v9, "verified"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->verified:Ljava/lang/Boolean;

    .line 205
    const-string v9, "locale_id"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->localeId:Ljava/lang/String;

    .line 206
    const-string v9, "name"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->name:Ljava/lang/String;

    .line 207
    const-string v9, "notes"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->notes:Ljava/lang/String;

    .line 208
    const-string v9, "organization_id"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->organizationId:Ljava/lang/Long;

    .line 209
    const-string v9, "phone"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->phone:Ljava/lang/String;

    .line 210
    const-string v9, "time_zone"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->timezone:Ljava/lang/String;

    .line 211
    const-string v9, "role"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zendesk/api/model/users/Role;->get(Ljava/lang/String;)Lcom/zendesk/api/model/users/Role;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->role:Lcom/zendesk/api/model/users/Role;

    .line 212
    const-string v9, "created_at"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 213
    const-string v9, "last_login_at"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->lastLogin:Lcom/zendesk/api/model/shared/ZDDate;

    .line 214
    const-string v9, "updated_at"

    invoke-static {v8, v9}, Lcom/zendesk/api/model/users/User;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 216
    const-string v9, "photo"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 217
    .local v5, photoAttach:Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 218
    new-instance v0, Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {v0, v5}, Lcom/zendesk/api/model/shared/Attachment;-><init>(Lorg/json/JSONObject;)V

    .line 219
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getUrl()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    .line 220
    iget-object v9, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    const-string v10, "_thumb"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/zendesk/api/model/users/User;->setPhotoURL(Ljava/lang/String;)V

    .line 224
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    :cond_1
    const-string v9, "tags"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 225
    .local v6, t:Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 226
    iget-object v9, p0, Lcom/zendesk/api/model/users/User;->currentTags:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 227
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 228
    iget-object v9, p0, Lcom/zendesk/api/model/users/User;->currentTags:Ljava/util/List;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1           #i:I
    :cond_2
    const-string v9, "identities"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 233
    .local v2, idents:Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    .line 234
    iget-object v9, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 235
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 236
    new-instance v7, Lcom/zendesk/api/model/users/User$UserIdentity;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, p0, v9}, Lcom/zendesk/api/model/users/User$UserIdentity;-><init>(Lcom/zendesk/api/model/users/User;Lorg/json/JSONObject;)V

    .line 237
    .local v7, ui:Lcom/zendesk/api/model/users/User$UserIdentity;
    iget-object v9, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v7}, Lcom/zendesk/api/model/users/User$UserIdentity;->getIdentityType()Lcom/zendesk/api/model/users/IdentityType;

    move-result-object v9

    sget-object v10, Lcom/zendesk/api/model/users/IdentityType;->TWITTER:Lcom/zendesk/api/model/users/IdentityType;

    if-ne v9, v10, :cond_3

    .line 235
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v1           #i:I
    .end local v7           #ui:Lcom/zendesk/api/model/users/User$UserIdentity;
    :cond_4
    const-string v9, "organizations"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 245
    .local v4, orgs:Lorg/json/JSONArray;
    if-eqz v4, :cond_5

    .line 246
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 247
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 248
    .local v3, org:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/zendesk/api/model/users/User;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-static {v9, v3}, Lcom/zendesk/api/model/users/Organization;->getOrgFromJSON(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Organization;

    move-result-object v9

    iput-object v9, p0, Lcom/zendesk/api/model/users/User;->organization:Lcom/zendesk/api/model/users/Organization;

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    .end local v1           #i:I
    .end local v3           #org:Lorg/json/JSONObject;
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized avatarAvailable()Z
    .locals 2

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    sget-object v1, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAvatarState()V
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->AVAILABLE:Lcom/zendesk/api/model/shared/DownloadState;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    .line 344
    return-void
.end method

.method public fullyLoaded()Z
    .locals 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/api/model/users/User;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->userId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/zendesk/api/requester/UserRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/users/User;->userId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/UserRequester;-><init>(J)V

    return-object v0
.end method

.method public declared-synchronized getAvatar(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, handler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/users/User;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/users/User;->avatarAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 354
    invoke-interface {p1, p0}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/zendesk/api/model/users/User;->localFilePath:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 359
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Error loading avatar: local path is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 363
    :cond_2
    :try_start_2
    const-string v6, "avatar-request"

    invoke-virtual {p0, v6}, Lcom/zendesk/api/model/users/User;->requestInProgress(Ljava/lang/String;)Z

    move-result v5

    .line 365
    .local v5, requestInProgress:Z
    const-string v6, "avatar-request"

    invoke-virtual {p0, v6, p1}, Lcom/zendesk/api/model/users/User;->addResponseHandler(Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    if-nez v5, :cond_0

    .line 370
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/zendesk/api/model/users/User;->localFilePath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, parent:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 374
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "File handling error loading avatar; parent is null."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 412
    .end local v2           #f:Ljava/io/File;
    .end local v4           #parent:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 413
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-interface {p1, v1}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 378
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #parent:Ljava/lang/String;
    :cond_3
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v3, p:Ljava/io/File;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 380
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    .line 381
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "File handling error loading avatar"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 385
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 386
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_7

    .line 387
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "File handling error loading avatar"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 391
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 394
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 395
    new-instance v0, Lcom/zendesk/api/requester/UserAvatarRequester;

    iget-object v6, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6, v7}, Lcom/zendesk/api/requester/UserAvatarRequester;-><init>(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 397
    .local v0, avatarRequest:Lcom/zendesk/api/requester/UserAvatarRequester;
    new-instance v6, Lcom/zendesk/api/model/users/User$1;

    invoke-direct {v6, p0, v0}, Lcom/zendesk/api/model/users/User$1;-><init>(Lcom/zendesk/api/model/users/User;Lcom/zendesk/api/requester/UserAvatarRequester;)V

    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User$1;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    return-object v0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

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
    .line 785
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->currentTags:Ljava/util/List;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupMembership()Ljava/util/List;
    .locals 1
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
    .line 794
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getIdentityString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 825
    iget-object v3, p0, Lcom/zendesk/api/model/users/User;->identityString:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 830
    iget-object v3, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/users/User$UserIdentity;

    .line 831
    .local v2, ui:Lcom/zendesk/api/model/users/User$UserIdentity;
    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User$UserIdentity;->getIdentityType()Lcom/zendesk/api/model/users/IdentityType;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/users/IdentityType;->PHONE_NUMBER:Lcom/zendesk/api/model/users/IdentityType;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User$UserIdentity;->getIdentityType()Lcom/zendesk/api/model/users/IdentityType;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/users/IdentityType;->TWITTER:Lcom/zendesk/api/model/users/IdentityType;

    if-eq v3, v4, :cond_0

    .line 833
    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User$UserIdentity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v3, p0, Lcom/zendesk/api/model/users/User;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 835
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    .end local v2           #ui:Lcom/zendesk/api/model/users/User$UserIdentity;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/users/User;->identityString:Ljava/lang/String;

    .line 842
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/zendesk/api/model/users/User;->identityString:Ljava/lang/String;

    return-object v3
.end method

.method public getLastLogin()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->lastLogin:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getLocalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->localFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->localeId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Lcom/zendesk/api/model/users/Organization;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->organization:Lcom/zendesk/api/model/users/Organization;

    return-object v0
.end method

.method public getOrganizationId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->organizationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/zendesk/api/model/users/Role;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->role:Lcom/zendesk/api/model/users/Role;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->twitterAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getUserType()Lcom/zendesk/api/model/users/UserType;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    return-object v0
.end method

.method public isActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/zendesk/api/model/users/User;->verified:Ljava/lang/Boolean;

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
    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/users/User;->parseResponse(Lorg/json/JSONObject;)V

    .line 182
    return-void
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "active"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->active:Ljava/lang/Boolean;

    .line 533
    return-void
.end method

.method public setAsUnknownUser()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;

    .line 159
    sget-object v0, Lcom/zendesk/api/model/users/UserType;->UNKNOWN:Lcom/zendesk/api/model/users/UserType;

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    .line 160
    return-void
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 461
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .parameter "details"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->details:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->email:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setExternalId(Ljava/lang/String;)V
    .locals 0
    .parameter "externalId"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->externalId:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setLastLogin(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "lastLogin"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->lastLogin:Lcom/zendesk/api/model/shared/ZDDate;

    .line 569
    return-void
.end method

.method public setLocaleId(Ljava/lang/String;)V
    .locals 0
    .parameter "localeId"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->localeId:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->name:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .parameter "notes"

    .prologue
    .line 622
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->notes:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setOrganization(Lcom/zendesk/api/model/users/Organization;)V
    .locals 0
    .parameter "organization"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->organization:Lcom/zendesk/api/model/users/Organization;

    .line 750
    return-void
.end method

.method public setOrganizationId(Ljava/lang/Long;)V
    .locals 0
    .parameter "organizationId"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->organizationId:Ljava/lang/Long;

    .line 641
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 658
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->phone:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public setPhotoURL(Ljava/lang/String;)V
    .locals 2
    .parameter "photoURL"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zendesk/api/model/users/User;->getBaseCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user_avatars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/zendesk/api/model/users/User;->getAvatarFilenameFromURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/User;->localFilePath:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public setRole(Lcom/zendesk/api/model/users/Role;)V
    .locals 0
    .parameter "role"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->role:Lcom/zendesk/api/model/users/Role;

    .line 696
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .parameter "timezone"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->timezone:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public setTwitterAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "twitterAccount"

    .prologue
    .line 776
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->twitterAccount:Ljava/lang/String;

    .line 777
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 731
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 732
    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->userId:Ljava/lang/Long;

    .line 443
    return-void
.end method

.method public setUserType(Lcom/zendesk/api/model/users/UserType;)V
    .locals 0
    .parameter "userType"

    .prologue
    .line 862
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->userType:Lcom/zendesk/api/model/users/UserType;

    .line 863
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "verified"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/zendesk/api/model/users/User;->verified:Ljava/lang/Boolean;

    .line 551
    return-void
.end method

.method public update(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/users/User;->parseResponse(Lorg/json/JSONObject;)V

    .line 191
    return-void
.end method
