.class public Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "TicketSharingAuditEvent.java"


# static fields
.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_AGREEMENT_ID:Ljava/lang/String; = "agreement_id"


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "action"
    .end annotation
.end field

.field private agreementId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "agreement_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 36
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 37
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->TICKET_SHARE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 38
    const-string v0, "action"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;->action:Ljava/lang/String;

    .line 39
    const-string v0, "agreement_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;->agreementId:Ljava/lang/Long;

    .line 40
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAgreementId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketSharingAuditEvent;->agreementId:Ljava/lang/Long;

    return-object v0
.end method
