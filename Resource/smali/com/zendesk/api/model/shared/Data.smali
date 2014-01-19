.class public Lcom/zendesk/api/model/shared/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VIA_ZENDESK:Ljava/lang/String; = "typvia_zendesk"


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "content"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "type"
    .end annotation
.end field

.field private viaZendesk:Z
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via_zendesk"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "type"
    .parameter "content"
    .parameter "viaZendesk"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Data;->type:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/zendesk/api/model/shared/Data;->content:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/zendesk/api/model/shared/Data;->viaZendesk:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Data;->type:Ljava/lang/String;

    .line 55
    const-string v0, "content"

    invoke-static {p1, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/shared/Data;->content:Ljava/lang/String;

    .line 56
    const-string v0, "typvia_zendesk"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zendesk/api/model/shared/Data;->viaZendesk:Z

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Data;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zendesk/api/model/shared/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isViaZendesk()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/zendesk/api/model/shared/Data;->viaZendesk:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Data;->content:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zendesk/api/model/shared/Data;->type:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setViaZendesk(Z)V
    .locals 0
    .parameter "viaZendesk"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/zendesk/api/model/shared/Data;->viaZendesk:Z

    .line 100
    return-void
.end method
