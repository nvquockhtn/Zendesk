.class public Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
.source "FacebookCommentAuditEvent.java"


# static fields
.field private static final KEY_AUTHOR_ID:Ljava/lang/String; = "author_id"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_GRAPH_OBJECT_ID:Ljava/lang/String; = "graph_object_id"

.field private static final KEY_VIA:Ljava/lang/String; = "via"


# instance fields
.field protected authorId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "author_id"
    .end annotation
.end field

.field protected data:Lcom/zendesk/api/model/shared/Data;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "data"
    .end annotation
.end field

.field protected graphObjectId:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "graph_object_id"
    .end annotation
.end field

.field private parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

.field protected via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 1
    .parameter "baseModel"
    .parameter "parentAudit"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->attachments:Ljava/util/List;

    .line 48
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"
    .parameter "parentAudit"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 61
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 62
    iput-object p4, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-direct {p0, p2}, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->update(Lorg/json/JSONObject;)V

    .line 66
    :cond_0
    return-void
.end method

.method private update(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"

    .prologue
    .line 69
    const-string v2, "author_id"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->authorId:Ljava/lang/String;

    .line 70
    const-string v2, "graph_object_id"

    invoke-static {p1, v2}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->graphObjectId:Ljava/lang/String;

    .line 72
    const-string v2, "via"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 74
    .local v1, viaJson:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 75
    new-instance v2, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v2, v1}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->via:Lcom/zendesk/api/model/shared/Via;

    .line 78
    :cond_0
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, dataJson:Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 81
    new-instance v2, Lcom/zendesk/api/model/shared/Data;

    invoke-direct {v2, v0}, Lcom/zendesk/api/model/shared/Data;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->data:Lcom/zendesk/api/model/shared/Data;

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    return-object v0
.end method

.method public getTrusted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->trusted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->body:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setIsPublic(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPublic"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/types/FacebookCommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    .line 146
    return-void
.end method
