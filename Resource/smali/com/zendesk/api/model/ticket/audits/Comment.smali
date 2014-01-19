.class public Lcom/zendesk/api/model/ticket/audits/Comment;
.super Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
.source "Comment.java"


# instance fields
.field private channelBack:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 2
    .parameter "baseModel"
    .parameter "parentAudit"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->channelBack:Ljava/lang/Boolean;

    .line 24
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/AccountConfig;->getTicketsCommentsPublicByDefault()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->isPublic:Ljava/lang/Boolean;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->isPublic:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->isPublic:Ljava/lang/Boolean;

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public getAttachmentToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    .line 58
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 60
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChannelBack()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->channelBack:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setChannelBack(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "channelBack"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/Comment;->channelBack:Ljava/lang/Boolean;

    .line 49
    return-void
.end method
