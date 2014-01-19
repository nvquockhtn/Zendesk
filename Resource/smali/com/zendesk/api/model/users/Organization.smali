.class public Lcom/zendesk/api/model/users/Organization;
.super Ljava/lang/Object;
.source "Organization.java"


# static fields
.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_DETAILS:Ljava/lang/String; = "details"

.field static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_NOTES:Ljava/lang/String; = "notes"

.field static final KEY_SHARED_COMMENTS:Ljava/lang/String; = "shared_comments"

.field static final KEY_SHARED_TICKETS:Ljava/lang/String; = "shared_tickets"

.field static final KEY_SUSPENDED:Ljava/lang/String; = "suspended"

.field static final KEY_TAGS:Ljava/lang/String; = "tags"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;

.field private currentTags:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private groupId:Ljava/lang/Long;

.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private notes:Ljava/lang/String;

.field private shared:Ljava/lang/Boolean;

.field private sharedComments:Ljava/lang/Boolean;

.field private suspended:Ljava/lang/Boolean;

.field private tagRestrictionMode:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .parameter "organizationId"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->id:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/users/Organization;->update(Lorg/json/JSONObject;)V

    .line 56
    return-void
.end method

.method public static getId(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 1
    .parameter "json"

    .prologue
    .line 90
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static getOrgFromJSON(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)Lcom/zendesk/api/model/users/Organization;
    .locals 3
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, u:Lcom/zendesk/api/model/users/Organization;
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getOrganizationCache()Lcom/zendesk/api/model/cache/OrganizationCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {p0}, Lcom/zendesk/api/model/BaseModel;->getOrganizationCache()Lcom/zendesk/api/model/cache/OrganizationCache;

    move-result-object v1

    invoke-static {p1}, Lcom/zendesk/api/model/users/Organization;->getId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zendesk/api/model/cache/OrganizationCache;->getOrganization(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Organization;

    move-result-object v0

    .line 103
    invoke-direct {v0, p1}, Lcom/zendesk/api/model/users/Organization;->update(Lorg/json/JSONObject;)V

    .line 107
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/zendesk/api/model/users/Organization;

    .end local v0           #u:Lcom/zendesk/api/model/users/Organization;
    invoke-direct {v0, p1}, Lcom/zendesk/api/model/users/Organization;-><init>(Lorg/json/JSONObject;)V

    .restart local v0       #u:Lcom/zendesk/api/model/users/Organization;
    goto :goto_0
.end method

.method private update(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 69
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->name:Ljava/lang/String;

    .line 70
    const-string v0, "created_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 71
    const-string v0, "tags"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->currentTags:Ljava/lang/String;

    .line 72
    const-string v0, "details"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->details:Ljava/lang/String;

    .line 73
    const-string v0, "updated_at"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 74
    const-string v0, "notes"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->notes:Ljava/lang/String;

    .line 75
    const-string v0, "shared_comments"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->sharedComments:Ljava/lang/Boolean;

    .line 76
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->id:Ljava/lang/Long;

    .line 77
    const-string v0, "group_id"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->groupId:Ljava/lang/Long;

    .line 78
    const-string v0, "shared_tickets"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->shared:Ljava/lang/Boolean;

    .line 79
    const-string v0, "suspended"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/users/Organization;->suspended:Ljava/lang/Boolean;

    .line 80
    return-void
.end method


# virtual methods
.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getCurrentTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->currentTags:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->groupId:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public isShared()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->shared:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSharedComments()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->sharedComments:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSuspended()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zendesk/api/model/users/Organization;->suspended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 144
    return-void
.end method

.method public setCurrentTags(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTags"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->currentTags:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .parameter "details"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->details:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setGroupId(Ljava/lang/Long;)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->groupId:Ljava/lang/Long;

    .line 271
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->id:Ljava/lang/Long;

    .line 253
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->name:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .parameter "notes"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->notes:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setShared(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "shared"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->shared:Ljava/lang/Boolean;

    .line 289
    return-void
.end method

.method public setSharedComments(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "sharedComments"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->sharedComments:Ljava/lang/Boolean;

    .line 234
    return-void
.end method

.method public setSuspended(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "suspended"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->suspended:Ljava/lang/Boolean;

    .line 307
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/zendesk/api/model/users/Organization;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 198
    return-void
.end method
