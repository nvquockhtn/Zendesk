.class public Lcom/zendesk/api/model/shared/Via$ViaSource;
.super Ljava/lang/Object;
.source "Via.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/shared/Via;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViaSource"
.end annotation


# static fields
.field static final KEY_FROM:Ljava/lang/String; = "from"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_REL:Ljava/lang/String; = "rel"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final KEY_TO:Ljava/lang/String; = "to"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private from:Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "from"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private rel:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "rel"
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

.field private to:Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "to"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/shared/Via;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter "json"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->this$0:Lcom/zendesk/api/model/shared/Via;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v1, "rel"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->rel:Ljava/lang/String;

    .line 111
    const-string v1, "type"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->type:Ljava/lang/String;

    .line 112
    const-string v1, "id"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->id:Ljava/lang/Long;

    .line 113
    const-string v1, "title"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->title:Ljava/lang/String;

    .line 115
    const-string v1, "from"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    .local v0, tmp:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;

    invoke-direct {v1, p1, v0}, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;-><init>(Lcom/zendesk/api/model/shared/Via;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->from:Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;

    .line 120
    :cond_0
    const-string v1, "to"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    new-instance v1, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;

    invoke-direct {v1, p1, v0}, Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;-><init>(Lcom/zendesk/api/model/shared/Via;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->to:Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public getFrom()Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->from:Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->to:Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via$ViaSource;->type:Ljava/lang/String;

    return-object v0
.end method
