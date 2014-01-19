.class public Lcom/zendesk/api/model/Activity$ActivityActor;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityActor"
.end annotation


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_IS_VERIFIED:Ljava/lang/String; = "is_verified"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PHOTO_URL:Ljava/lang/String; = "photo_url"


# instance fields
.field email:Ljava/lang/String;

.field id:Ljava/lang/Long;

.field name:Ljava/lang/String;

.field photoUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/zendesk/api/model/Activity;

.field verified:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "json"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->this$0:Lcom/zendesk/api/model/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->name:Ljava/lang/String;

    .line 225
    const-string v0, "photo_url"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->photoUrl:Ljava/lang/String;

    .line 226
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->id:Ljava/lang/Long;

    .line 227
    const-string v0, "email"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->email:Ljava/lang/String;

    .line 228
    const-string v0, "is_verified"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->verified:Ljava/lang/Boolean;

    .line 229
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zendesk/api/model/Activity$ActivityActor;->verified:Ljava/lang/Boolean;

    return-object v0
.end method
