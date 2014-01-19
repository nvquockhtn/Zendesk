.class public Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "PushAuditEvent.java"


# static fields
.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VALUE_REFERENCE:Ljava/lang/String; = "valueReference"


# instance fields
.field private value:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "value"
    .end annotation
.end field

.field private valueReference:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "value_reference"
    .end annotation
.end field

.field private via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 2
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 38
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 39
    sget-object v1, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->PUSH:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 40
    const-string v1, "value"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->value:Ljava/lang/String;

    .line 41
    const-string v1, "valueReference"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->valueReference:Ljava/lang/String;

    .line 43
    const-string v1, "via"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    .local v0, viaJSON:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v1, v0}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->valueReference:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/PushAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method
