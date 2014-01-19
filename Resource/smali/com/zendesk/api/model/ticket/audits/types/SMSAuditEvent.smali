.class public Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "SMSAuditEvent.java"


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final KEY_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "phone_number"
    .end annotation
.end field

.field private recipientId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recipient_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 42
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->SMS:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 43
    const-string v0, "body"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->body:Ljava/lang/String;

    .line 44
    const-string v0, "phone_number"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->phoneNumber:Ljava/lang/String;

    .line 45
    const-string v0, "recipient_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->recipientId:Ljava/lang/Long;

    .line 46
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SMSAuditEvent;->recipientId:Ljava/lang/Long;

    return-object v0
.end method
