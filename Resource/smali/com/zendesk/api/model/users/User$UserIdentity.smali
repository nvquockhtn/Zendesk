.class public Lcom/zendesk/api/model/users/User$UserIdentity;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/users/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserIdentity"
.end annotation


# static fields
.field static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field static final KEY_IDENTITY_TYPE:Ljava/lang/String; = "type"

.field static final KEY_IS_VERIFIED:Ljava/lang/String; = "verified"

.field static final KEY_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field static final KEY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private identityType:Lcom/zendesk/api/model/users/IdentityType;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/users/User;

.field private updatedAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "updated_at"
    .end annotation
.end field

.field private userId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "user_id"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "value"
    .end annotation
.end field

.field private verified:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "verified"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/users/User;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter "json"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->this$0:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    const-string v1, "type"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 968
    invoke-static {v0}, Lcom/zendesk/api/model/users/IdentityType;->get(Ljava/lang/String;)Lcom/zendesk/api/model/users/IdentityType;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->identityType:Lcom/zendesk/api/model/users/IdentityType;

    .line 970
    :cond_0
    const-string v1, "value"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->value:Ljava/lang/String;

    .line 971
    const-string v1, "verified"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->verified:Ljava/lang/Boolean;

    .line 972
    const-string v1, "created_at"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 973
    const-string v1, "updated_at"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 974
    const-string v1, "user_id"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->userId:Ljava/lang/Long;

    .line 975
    return-void
.end method


# virtual methods
.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getIdentityType()Lcom/zendesk/api/model/users/IdentityType;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->identityType:Lcom/zendesk/api/model/users/IdentityType;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCreatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "createdAt"

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 1047
    return-void
.end method

.method public setIdentityType(Lcom/zendesk/api/model/users/IdentityType;)V
    .locals 0
    .parameter "identityType"

    .prologue
    .line 992
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->identityType:Lcom/zendesk/api/model/users/IdentityType;

    .line 993
    return-void
.end method

.method public setUpdatedAt(Lcom/zendesk/api/model/shared/ZDDate;)V
    .locals 0
    .parameter "updatedAt"

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->updatedAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 1065
    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->userId:Ljava/lang/Long;

    .line 1083
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->value:Ljava/lang/String;

    .line 1011
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "verified"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$UserIdentity;->verified:Ljava/lang/Boolean;

    .line 1029
    return-void
.end method
