.class public Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "FacebookAuditEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;
    }
.end annotation


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_COMMUNICATION:Ljava/lang/String; = "communication"

.field private static final KEY_PAGE:Ljava/lang/String; = "page"

.field private static final KEY_TICKET_VIA:Ljava/lang/String; = "ticket_via"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field private communication:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "communication"
    .end annotation
.end field

.field private page:Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "page"
    .end annotation
.end field

.field private ticketVia:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "ticket_via"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 2
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 47
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 48
    sget-object v1, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_EVENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 49
    const-string v1, "body"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->body:Ljava/lang/String;

    .line 50
    const-string v1, "ticket_via"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->ticketVia:Ljava/lang/String;

    .line 51
    const-string v1, "communication"

    invoke-static {p2, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->communication:Ljava/lang/Long;

    .line 53
    const-string v1, "page"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    .local v0, pageJSON:Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->page:Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;

    invoke-direct {v1, p0, v0}, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;-><init>(Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->page:Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunication()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->communication:Ljava/lang/Long;

    return-object v0
.end method

.method public getPage()Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->page:Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent$FacebookPage;

    return-object v0
.end method

.method public getTicketVia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookAuditEvent;->ticketVia:Ljava/lang/String;

    return-object v0
.end method
