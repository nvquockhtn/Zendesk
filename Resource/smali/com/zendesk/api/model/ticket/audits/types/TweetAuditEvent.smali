.class public Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;
.super Lcom/zendesk/api/model/ticket/audits/AuditEvent;
.source "TweetAuditEvent.java"


# static fields
.field private static final KEY_BODY:Ljava/lang/String; = "body"

.field private static final KEY_DIRECT_MESSAGE:Ljava/lang/String; = "direct_message"

.field private static final KEY_RECIPIENTS:Ljava/lang/String; = "recipients"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "body"
    .end annotation
.end field

.field private directMessage:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "direct_message"
    .end annotation
.end field

.field private recipients:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "recipients"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Ljava/lang/Long;)V
    .locals 6
    .parameter "baseModel"
    .parameter "json"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    .line 42
    sget-object v4, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->TWEET:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->type:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    .line 43
    const-string v4, "body"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->body:Ljava/lang/String;

    .line 44
    const-string v4, "direct_message"

    invoke-static {p2, v4}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->directMessage:Ljava/lang/String;

    .line 46
    const-string v4, "recipients"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 47
    .local v2, recips:Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 50
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 51
    .local v1, recipient:Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1           #recipient:Ljava/lang/Long;
    :cond_1
    iput-object v3, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->recipients:Ljava/util/List;

    .line 57
    .end local v0           #i:I
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->directMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/types/TweetAuditEvent;->recipients:Ljava/util/List;

    return-object v0
.end method
