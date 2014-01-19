.class public Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "CCAuditEvent.java"


# static fields
.field private static final KEY_RECIPIENTS:Ljava/lang/String; = "recipients"

.field private static final KEY_VIA:Ljava/lang/String; = "via"


# instance fields
.field private recipients:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recipients"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 7
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 40
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 41
    sget-object v5, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->CCS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 43
    const-string v5, "via"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 44
    .local v4, v:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 45
    new-instance v5, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v5, v4}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    .line 48
    :cond_0
    const-string v5, "recipients"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 49
    .local v2, recips:Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 52
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 53
    .local v1, recipient:Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1           #recipient:Ljava/lang/Long;
    :cond_2
    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;->recipients:Ljava/util/List;

    .line 60
    .end local v0           #i:I
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getRecipients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;->recipients:Ljava/util/List;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CCAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method
