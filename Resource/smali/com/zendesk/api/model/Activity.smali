.class public Lcom/zendesk/api/model/Activity;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/Activity$ActivityUser;,
        Lcom/zendesk/api/model/Activity$ActivityActor;,
        Lcom/zendesk/api/model/Activity$ActivityTargetTicket;,
        Lcom/zendesk/api/model/Activity$ActivityObject;
    }
.end annotation


# static fields
.field private static final KEY_ACTOR:Ljava/lang/String; = "actor"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_OBJECT:Ljava/lang/String; = "object"

.field private static final KEY_TARGET:Ljava/lang/String; = "target"

.field private static final KEY_TICKET:Ljava/lang/String; = "ticket"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_USER:Ljava/lang/String; = "user"

.field private static final KEY_VERB:Ljava/lang/String; = "verb"


# instance fields
.field private actor:Lcom/zendesk/api/model/Activity$ActivityActor;

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;

.field private id:Ljava/lang/Long;

.field private object:Lcom/zendesk/api/model/Activity$ActivityObject;

.field private target:Lcom/zendesk/api/model/Activity$ActivityTargetTicket;

.field private title:Ljava/lang/String;

.field private user:Lcom/zendesk/api/model/Activity$ActivityUser;

.field private verb:Lcom/zendesk/api/model/enums/ActivityVerb;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "json"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v2, "verb"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/model/enums/ActivityVerb;->get(Ljava/lang/String;)Lcom/zendesk/api/model/enums/ActivityVerb;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->verb:Lcom/zendesk/api/model/enums/ActivityVerb;

    .line 42
    const-string v2, "title"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->title:Ljava/lang/String;

    .line 43
    const-string v2, "target"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    .local v1, t:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 45
    new-instance v2, Lcom/zendesk/api/model/Activity$ActivityTargetTicket;

    const-string v3, "ticket"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/zendesk/api/model/Activity$ActivityTargetTicket;-><init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->target:Lcom/zendesk/api/model/Activity$ActivityTargetTicket;

    .line 48
    :cond_0
    const-string v2, "created_at"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 50
    const-string v2, "object"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    .local v0, o:Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 52
    new-instance v2, Lcom/zendesk/api/model/Activity$ActivityObject;

    const-string v3, "ticket"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/zendesk/api/model/Activity$ActivityObject;-><init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->object:Lcom/zendesk/api/model/Activity$ActivityObject;

    .line 54
    :cond_1
    const-string v2, "title"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->title:Ljava/lang/String;

    .line 55
    const-string v2, "actor"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    new-instance v2, Lcom/zendesk/api/model/Activity$ActivityActor;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/api/model/Activity$ActivityActor;-><init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->actor:Lcom/zendesk/api/model/Activity$ActivityActor;

    .line 59
    :cond_2
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->id:Ljava/lang/Long;

    .line 60
    const-string v2, "user"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    new-instance v2, Lcom/zendesk/api/model/Activity$ActivityUser;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/api/model/Activity$ActivityUser;-><init>(Lcom/zendesk/api/model/Activity;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/Activity;->user:Lcom/zendesk/api/model/Activity$ActivityUser;

    .line 64
    :cond_3
    return-void
.end method


# virtual methods
.method public getActor()Lcom/zendesk/api/model/Activity$ActivityActor;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->actor:Lcom/zendesk/api/model/Activity$ActivityActor;

    return-object v0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getObject()Lcom/zendesk/api/model/Activity$ActivityObject;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->object:Lcom/zendesk/api/model/Activity$ActivityObject;

    return-object v0
.end method

.method public getTarget()Lcom/zendesk/api/model/Activity$ActivityTargetTicket;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->target:Lcom/zendesk/api/model/Activity$ActivityTargetTicket;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/zendesk/api/model/Activity$ActivityUser;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->user:Lcom/zendesk/api/model/Activity$ActivityUser;

    return-object v0
.end method

.method public getVerb()Lcom/zendesk/api/model/enums/ActivityVerb;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zendesk/api/model/Activity;->verb:Lcom/zendesk/api/model/enums/ActivityVerb;

    return-object v0
.end method
