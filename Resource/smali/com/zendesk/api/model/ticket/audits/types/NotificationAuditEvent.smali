.class public Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "NotificationAuditEvent.java"


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_FIELD_NAME:Ljava/lang/String; = "field_name"

.field private static final KEY_RECIPIENTS:Ljava/lang/String; = "recipients"

.field private static final KEY_SUBJECT:Ljava/lang/String; = "subject"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VIA:Ljava/lang/String; = "via"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field private fieldName:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "field_name"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

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

.field private subject:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "subject"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "value"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 7
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 53
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 54
    sget-object v5, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->NOTIFICATION:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 55
    const-string v5, "field_name"

    invoke-static {p2, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->fieldName:Ljava/lang/String;

    .line 56
    const-string v5, "value"

    invoke-static {p2, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->value:Ljava/lang/String;

    .line 57
    const-string v5, "subject"

    invoke-static {p2, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->subject:Ljava/lang/String;

    .line 58
    const-string v5, "body"

    invoke-static {p2, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->body:Ljava/lang/String;

    .line 60
    const-string v5, "via"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 61
    .local v4, v:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 62
    new-instance v5, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v5, v4}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    .line 65
    :cond_0
    const-string v5, "recipients"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 66
    .local v2, recips:Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 69
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 70
    .local v1, recipient:Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v1           #recipient:Ljava/lang/Long;
    :cond_2
    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->recipients:Ljava/util/List;

    .line 76
    .end local v0           #i:I
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->fieldName:Ljava/lang/String;

    return-object v0
.end method

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
    .line 123
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->recipients:Ljava/util/List;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/NotificationAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method
