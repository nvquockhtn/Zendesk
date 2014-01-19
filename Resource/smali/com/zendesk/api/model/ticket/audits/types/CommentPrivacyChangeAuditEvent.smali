.class public Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "CommentPrivacyChangeAuditEvent.java"


# static fields
.field private static final KEY_PUBLIC:Ljava/lang/String; = "public"


# instance fields
.field private commentId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "comment_id"
    .end annotation
.end field

.field private isPublic:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "public"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 1
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 35
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 36
    sget-object v0, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->PRIVACY_CHANGE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 37
    const-string v0, "public"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;->isPublic:Ljava/lang/Boolean;

    .line 38
    const-string v0, "comment_id"

    invoke-static {p2, v0}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;->commentId:Ljava/lang/Long;

    .line 39
    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;->commentId:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/CommentPrivacyChangeAuditEvent;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method
