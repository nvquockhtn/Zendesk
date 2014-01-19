.class public Lcom/zendesk/api/model/shared/Via;
.super Ljava/lang/Object;
.source "Via.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/shared/Via$ViaSourceToFrom;,
        Lcom/zendesk/api/model/shared/Via$ViaSource;
    }
.end annotation


# static fields
.field static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field static final KEY_SOURCE:Ljava/lang/String; = "source"


# instance fields
.field private channel:Lcom/zendesk/api/model/account/ViaChannel;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "channel"
        type = Ljava/lang/String;
    .end annotation
.end field

.field private source:Lcom/zendesk/api/model/shared/Via$ViaSource;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "source"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "json"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/shared/Via;->update(Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getChannel()Lcom/zendesk/api/model/account/ViaChannel;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via;->channel:Lcom/zendesk/api/model/account/ViaChannel;

    return-object v0
.end method

.method public getSource()Lcom/zendesk/api/model/shared/Via$ViaSource;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Via;->source:Lcom/zendesk/api/model/shared/Via$ViaSource;

    return-object v0
.end method

.method public setChannel(Lcom/zendesk/api/model/account/ViaChannel;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Via;->channel:Lcom/zendesk/api/model/account/ViaChannel;

    .line 64
    return-void
.end method

.method public setSource(Lcom/zendesk/api/model/shared/Via$ViaSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Via;->source:Lcom/zendesk/api/model/shared/Via$ViaSource;

    .line 81
    return-void
.end method

.method update(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"

    .prologue
    .line 41
    const-string v1, "channel"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/api/model/account/ViaChannel;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via;->channel:Lcom/zendesk/api/model/account/ViaChannel;

    .line 43
    const-string v1, "source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    .local v0, src:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/zendesk/api/model/shared/Via$ViaSource;

    invoke-direct {v1, p0, v0}, Lcom/zendesk/api/model/shared/Via$ViaSource;-><init>(Lcom/zendesk/api/model/shared/Via;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/shared/Via;->source:Lcom/zendesk/api/model/shared/Via$ViaSource;

    .line 47
    :cond_0
    return-void
.end method
