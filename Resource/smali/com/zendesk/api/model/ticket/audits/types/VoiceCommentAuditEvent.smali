.class public Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
.source "VoiceCommentAuditEvent.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_FORMATTED_FROM:Ljava/lang/String; = "formatted_from"

.field private static final KEY_PUBLIC:Ljava/lang/String; = "public"

.field private static final KEY_TRANSCRIPTION_VISIBLE:Ljava/lang/String; = "transcription_visible"

.field private static final KEY_VIA:Ljava/lang/String; = "via"


# instance fields
.field private data:Lcom/zendesk/api/model/ticket/audits/types/VoiceData;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "data"
    .end annotation
.end field

.field private formattedFrom:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "formatted_from"
    .end annotation
.end field

.field private isPublic:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "public"
    .end annotation
.end field

.field private transcriptionVisible:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "transcription_visible"
    .end annotation
.end field

.field private via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 3
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"
    .parameter "parentAudit"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 48
    sget-object v2, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->VOICE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 50
    const-string v2, "public"

    invoke-static {p2, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    .line 51
    const-string v2, "formatted_from"

    invoke-static {p2, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->formattedFrom:Ljava/lang/String;

    .line 52
    const-string v2, "transcription_visible"

    invoke-static {p2, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->transcriptionVisible:Ljava/lang/Boolean;

    .line 54
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    .local v1, vd:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 56
    new-instance v2, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;

    invoke-direct {v2, v1}, Lcom/zendesk/api/model/ticket/audits/types/VoiceData;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->data:Lcom/zendesk/api/model/ticket/audits/types/VoiceData;

    .line 58
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->body:Ljava/lang/String;

    .line 60
    const-string v2, "via"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    .local v0, v:Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 62
    new-instance v2, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v2, v0}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public getData()Lcom/zendesk/api/model/ticket/audits/types/VoiceData;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->data:Lcom/zendesk/api/model/ticket/audits/types/VoiceData;

    return-object v0
.end method

.method public getFormattedFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->formattedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTranscriptionVisible()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->transcriptionVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method
