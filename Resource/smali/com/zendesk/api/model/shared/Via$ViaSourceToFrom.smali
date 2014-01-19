.class public Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;
.super Ljava/lang/Object;
.source "Via.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/shared/Via;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViaSourceToFrom"
.end annotation


# static fields
.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private facebookId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "profile_url"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "name"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "phone"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private profileURL:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "profile_url"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/shared/Via;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/shared/Via;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->this$0:Lcom/zendesk/api/model/shared/Via;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->name:Ljava/lang/String;

    .line 206
    const-string v0, "phone"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->phone:Ljava/lang/String;

    .line 207
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->id:Ljava/lang/Long;

    .line 208
    const-string v0, "title"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->title:Ljava/lang/String;

    .line 209
    const-string v0, "facebook_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->facebookId:Ljava/lang/String;

    .line 210
    const-string v0, "profile_url"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->profileURL:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->facebookId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->profileURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;->title:Ljava/lang/String;

    return-object v0
.end method
