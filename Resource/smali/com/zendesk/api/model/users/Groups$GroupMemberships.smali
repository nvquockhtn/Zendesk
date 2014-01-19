.class public Lcom/zendesk/api/model/users/Groups$GroupMemberships;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Groups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/users/Groups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupMemberships"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/users/Groups$GroupMemberships;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_GROUPS:Ljava/lang/String; = "groups"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "groups"
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_GROUP_GROUP_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "groups.id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_GROUP_GROUP_NAME:Ljava/lang/String; = "name"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "groups.name"
        type = Ljava/lang/String;
    .end annotation
.end field

.field static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_memberships.group_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field static final KEY_GROUP_MEMBERSHIPS:Ljava/lang/String; = "group_memberships"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_memberships"
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_USERS:Ljava/lang/String; = "users"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "users"
        type = Ljava/util/List;
    .end annotation
.end field

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "group_memberships.user_id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_USER_USER_EMAIL:Ljava/lang/String; = "email"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "users.email"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private static final KEY_USER_USER_ID:Ljava/lang/String; = "id"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "users.id"
        type = Ljava/lang/Long;
    .end annotation
.end field

.field private static final KEY_USER_USER_NAME:Ljava/lang/String; = "name"
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "users.name"
        type = Ljava/lang/String;
    .end annotation
.end field


# instance fields
.field private currentPage:I

.field private hasNextPage:Z

.field final synthetic this$0:Lcom/zendesk/api/model/users/Groups;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/users/Groups;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->this$0:Lcom/zendesk/api/model/users/Groups;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->currentPage:I

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->hasNextPage:Z

    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/zendesk/api/requester/GroupMembershipRequester;

    iget v1, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->currentPage:I

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/GroupMembershipRequester;-><init>(I)V

    return-object v0
.end method

.method protected onceParsed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->hasNextPage:Z

    if-eqz v0, :cond_0

    .line 240
    iget v0, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->currentPage:I

    .line 241
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V

    .line 243
    :cond_0
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 13
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v7, json:Lorg/json/JSONObject;
    const-string v12, "users"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 196
    .local v11, users:Lorg/json/JSONArray;
    if-eqz v11, :cond_0

    .line 197
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 198
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 199
    .local v9, user:Lorg/json/JSONObject;
    const-string v12, "id"

    invoke-static {v9, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 200
    .local v10, userId:Ljava/lang/Long;
    iget-object v12, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->this$0:Lcom/zendesk/api/model/users/Groups;

    #getter for: Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static {v12}, Lcom/zendesk/api/model/users/Groups;->access$000(Lcom/zendesk/api/model/users/Groups;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v12

    invoke-interface {v12}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v12

    invoke-interface {v12, v10}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v8

    .line 201
    .local v8, u:Lcom/zendesk/api/model/users/User;
    const-string v12, "email"

    invoke-static {v9, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zendesk/api/model/users/User;->setEmail(Ljava/lang/String;)V

    .line 202
    const-string v12, "name"

    invoke-static {v9, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/zendesk/api/model/users/User;->setName(Ljava/lang/String;)V

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 206
    .end local v6           #i:I
    .end local v8           #u:Lcom/zendesk/api/model/users/User;
    .end local v9           #user:Lorg/json/JSONObject;
    .end local v10           #userId:Ljava/lang/Long;
    :cond_0
    const-string v12, "groups"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 207
    .local v5, groups:Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 208
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_1

    .line 209
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 210
    .local v3, group:Lorg/json/JSONObject;
    const-string v12, "id"

    invoke-static {v3, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 211
    .local v4, groupId:Ljava/lang/Long;
    iget-object v12, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->this$0:Lcom/zendesk/api/model/users/Groups;

    #getter for: Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static {v12}, Lcom/zendesk/api/model/users/Groups;->access$000(Lcom/zendesk/api/model/users/Groups;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v12

    invoke-interface {v12}, Lcom/zendesk/api/model/BaseModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v12

    invoke-interface {v12, v4}, Lcom/zendesk/api/model/cache/GroupCache;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 212
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    const-string v12, "name"

    invoke-static {v3, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/zendesk/api/model/users/Group;->setName(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 216
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    .end local v3           #group:Lorg/json/JSONObject;
    .end local v4           #groupId:Ljava/lang/Long;
    .end local v6           #i:I
    :cond_1
    const-string v12, "group_memberships"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 218
    .local v2, gmArray:Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 220
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_3

    .line 222
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 223
    .local v1, gm:Lorg/json/JSONObject;
    const-string v12, "user_id"

    invoke-static {v1, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 224
    .restart local v10       #userId:Ljava/lang/Long;
    const-string v12, "group_id"

    invoke-static {v1, v12}, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 226
    .restart local v4       #groupId:Ljava/lang/Long;
    iget-object v12, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->this$0:Lcom/zendesk/api/model/users/Groups;

    invoke-virtual {v12, v4}, Lcom/zendesk/api/model/users/Groups;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 227
    .restart local v0       #g:Lcom/zendesk/api/model/users/Group;
    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0, v10}, Lcom/zendesk/api/model/users/Group;->containsUser(Ljava/lang/Long;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 229
    iget-object v12, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->this$0:Lcom/zendesk/api/model/users/Groups;

    #getter for: Lcom/zendesk/api/model/users/Groups;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static {v12}, Lcom/zendesk/api/model/users/Groups;->access$000(Lcom/zendesk/api/model/users/Groups;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v12

    invoke-interface {v12}, Lcom/zendesk/api/model/BaseModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v12

    invoke-interface {v12, v10}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/zendesk/api/model/users/Group;->addUser(Lcom/zendesk/api/model/users/User;)V

    .line 220
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 235
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    .end local v1           #gm:Lorg/json/JSONObject;
    .end local v4           #groupId:Ljava/lang/Long;
    .end local v6           #i:I
    .end local v10           #userId:Ljava/lang/Long;
    :cond_3
    const-string v12, "next_page"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, p0, Lcom/zendesk/api/model/users/Groups$GroupMemberships;->hasNextPage:Z

    .line 236
    return-void

    .line 235
    :cond_4
    const/4 v12, 0x0

    goto :goto_3
.end method
