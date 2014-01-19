.class public Lcom/zendesk/api/model/ticket/audits/TicketAudit;
.super Ljava/lang/Object;
.source "TicketAudit.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_AUTHOR_ID:Ljava/lang/String; = "author_id"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final KEY_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_METADATA:Ljava/lang/String; = "metadata"

.field private static final KEY_VIA:Ljava/lang/String; = "via"


# instance fields
.field private authorId:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "author_id"
    .end annotation
.end field

.field private createdAt:Lcom/zendesk/api/model/shared/ZDDate;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "created_at"
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/AuditEvent;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "metadata"
    .end annotation
.end field

.field private via:Lcom/zendesk/api/model/shared/Via;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "via"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->events:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Lcom/zendesk/api/model/BaseModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->authorId:Ljava/lang/Long;

    .line 48
    new-instance v0, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v0}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->events:Ljava/util/List;

    .line 59
    const-string v6, "created_at"

    invoke-static {p2, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonDateVal(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    iput-object v6, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    .line 60
    const-string v6, "author_id"

    invoke-static {p2, v6}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->authorId:Ljava/lang/Long;

    .line 62
    const-string v6, "via"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 63
    .local v5, v:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 64
    new-instance v6, Lcom/zendesk/api/model/shared/Via;

    invoke-direct {v6, v5}, Lcom/zendesk/api/model/shared/Via;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->via:Lcom/zendesk/api/model/shared/Via;

    .line 67
    :cond_0
    const-string v6, "metadata"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, md:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 69
    new-instance v6, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    invoke-direct {v6, v3}, Lcom/zendesk/api/model/ticket/audits/AuditMetadata;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->metadata:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    .line 72
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/audits/AuditEvent;>;"
    const-string v6, "events"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 75
    .local v1, eventsArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_3

    .line 76
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 78
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    .local v0, aeo:Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 80
    invoke-static {p1, v0, p0}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->getAuditEvent(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0           #aeo:Lorg/json/JSONObject;
    .end local v2           #i:I
    :cond_3
    iput-object v4, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->events:Ljava/util/List;

    .line 85
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zendesk/api/model/ticket/audits/TicketAudit;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/shared/ZDDate;->compareTo(Lcom/zendesk/api/model/shared/ZDDate;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->compareTo(Lcom/zendesk/api/model/ticket/audits/TicketAudit;)I

    move-result v0

    return v0
.end method

.method public getAuthorId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->authorId:Ljava/lang/Long;

    return-object v0
.end method

.method public getComment()Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    .line 95
    .local v0, ae:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->getType()Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->getType()Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->FACEBOOK_COMMENT:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/AuditEvent;->getType()Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    move-result-object v2

    sget-object v3, Lcom/zendesk/api/model/ticket/audits/AuditEventType;->VOICE:Lcom/zendesk/api/model/ticket/audits/AuditEventType;

    if-ne v2, v3, :cond_0

    .line 99
    .end local v0           #ae:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->createdAt:Lcom/zendesk/api/model/shared/ZDDate;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/AuditEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->events:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMetadata()Lcom/zendesk/api/model/ticket/audits/AuditMetadata;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->metadata:Lcom/zendesk/api/model/ticket/audits/AuditMetadata;

    return-object v0
.end method

.method public getVia()Lcom/zendesk/api/model/shared/Via;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->via:Lcom/zendesk/api/model/shared/Via;

    return-object v0
.end method

.method public setVia(Lcom/zendesk/api/model/shared/Via;)V
    .locals 0
    .parameter "via"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->via:Lcom/zendesk/api/model/shared/Via;

    .line 129
    return-void
.end method
