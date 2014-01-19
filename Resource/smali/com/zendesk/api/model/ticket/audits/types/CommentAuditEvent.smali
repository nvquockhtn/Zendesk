.class public Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "CommentAuditEvent.java"


# static fields
.field private static final KEY_ATTACHMENTS:Ljava/lang/String; = "attachments"

.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_HTML_BODY:Ljava/lang/String; = "html_body"

.field private static final KEY_PUBLIC:Ljava/lang/String; = "public"

.field private static final KEY_TRUSTED:Ljava/lang/String; = "trusted"


# instance fields
.field protected attachments:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "attachments"
        valueRequired = .enum Lcom/zendesk/api/APIValueRequired;->NEVER:Lcom/zendesk/api/APIValueRequired;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field protected body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field protected htmlBody:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "html_body"
    .end annotation
.end field

.field protected isPublic:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "public"
    .end annotation
.end field

.field private parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

.field protected trusted:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "trusted"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 1
    .parameter "baseModel"
    .parameter "parentAudit"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 47
    iput-object p2, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->attachments:Ljava/util/List;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 5
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"
    .parameter "parentAudit"

    .prologue
    .line 60
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 61
    iput-object p4, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 62
    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 63
    const-string v4, "attachments"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 64
    .local v1, attachmentsArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Attachment;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    .local v0, at:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 69
    new-instance v4, Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {v4, v0}, Lcom/zendesk/api/model/shared/Attachment;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v0           #at:Lorg/json/JSONObject;
    :cond_1
    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->attachments:Ljava/util/List;

    .line 75
    .end local v2           #i:I
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/shared/Attachment;>;"
    :cond_2
    const-string v4, "body"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->body:Ljava/lang/String;

    .line 76
    const-string v4, "html_body"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->htmlBody:Ljava/lang/String;

    .line 77
    const-string v4, "public"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    .line 78
    const-string v4, "trusted"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->trusted:Ljava/lang/Boolean;

    .line 79
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
    .line 87
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->htmlBody:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->parentAudit:Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    return-object v0
.end method

.method public getTrusted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->trusted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->body:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setIsPublic(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPublic"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->isPublic:Ljava/lang/Boolean;

    .line 134
    return-void
.end method
