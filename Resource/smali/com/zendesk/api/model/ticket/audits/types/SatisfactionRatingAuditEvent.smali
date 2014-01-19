.class public Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "SatisfactionRatingAuditEvent.java"


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_SCORE:Ljava/lang/String; = "score"


# instance fields
.field private assigneeId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "assignee_id"
    .end annotation
.end field

.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation
.end field

.field private score:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "score"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 38
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 39
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->SAT_RATING:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 40
    const-string v0, "body"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->body:Ljava/lang/String;

    .line 41
    const-string v0, "score"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->score:Ljava/lang/String;

    .line 42
    const-string v0, "assignee_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->assigneeId:Ljava/lang/Long;

    .line 43
    return-void
.end method


# virtual methods
.method public getAssigneeId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->assigneeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/SatisfactionRatingAuditEvent;->score:Ljava/lang/String;

    return-object v0
.end method
