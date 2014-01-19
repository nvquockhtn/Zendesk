.class public Lcom/zendesk/api/model/ticket/audits/types/TicketErrorAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "TicketErrorAuditEvent.java"


# static fields
.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 31
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 32
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->ERROR:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketErrorAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 33
    const-string v0, "message"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketErrorAuditEvent;->message:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TicketErrorAuditEvent;->message:Ljava/lang/String;

    return-object v0
.end method
