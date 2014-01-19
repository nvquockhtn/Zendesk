.class public Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "ExternalAuditEvent.java"


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_RESOURCE:Ljava/lang/String; = "resource"

.field private static final KEY_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private resource:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "resource"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private success:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "success"
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
    .locals 2
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 42
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 43
    sget-object v1, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->EXTERNAL:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 44
    const-string v1, "resource"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->resource:Ljava/lang/String;

    .line 45
    const-string v1, "body"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->body:Ljava/lang/String;

    .line 46
    const-string v1, "success"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->success:Ljava/lang/String;

    .line 48
    const-string v1, "via"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    .local v0, viaJSON:Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v1, v0}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->success:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/ExternalAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method
