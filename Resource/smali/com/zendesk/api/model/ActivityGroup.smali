.class public Lcom/zendesk/api/model/ActivityGroup;
.super Ljava/lang/Object;
.source "ActivityGroup.java"


# instance fields
.field private final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private commenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field private lastAssign:Ljava/lang/String;

.field private priorityChanged:Z

.field private subject:Ljava/lang/String;

.field private ticketId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->activities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->activities:Ljava/util/List;

    return-object v0
.end method

.method public getCommenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAssigned()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->lastAssign:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zendesk/api/model/ActivityGroup;->ticketId:Ljava/lang/Long;

    return-object v0
.end method

.method public hasPriorityChanged()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/zendesk/api/model/ActivityGroup;->priorityChanged:Z

    return v0
.end method

.method parseValues()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->lastAssign:Ljava/lang/String;

    .line 29
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 30
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 33
    :cond_0
    iput-boolean v4, p0, Lcom/zendesk/api/model/ActivityGroup;->priorityChanged:Z

    .line 35
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->activities:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/Activity;

    .line 36
    .local v0, a:Lcom/zendesk/api/model/Activity;
    invoke-virtual {v0}, Lcom/zendesk/api/model/Activity;->getObject()Lcom/zendesk/api/model/Activity$ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/Activity$ActivityObject;->getNiceId()Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->ticketId:Ljava/lang/Long;

    .line 37
    invoke-virtual {v0}, Lcom/zendesk/api/model/Activity;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->date:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/zendesk/api/model/Activity;->getObject()Lcom/zendesk/api/model/Activity$ActivityObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/Activity$ActivityObject;->getSubject()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->subject:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/Activity;

    .line 41
    .local v1, act:Lcom/zendesk/api/model/Activity;
    invoke-virtual {v1}, Lcom/zendesk/api/model/Activity;->getVerb()Lcom/zendesk/api/model/enums/ActivityVerb;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/enums/ActivityVerb;->PRIORITY:Lcom/zendesk/api/model/enums/ActivityVerb;

    if-ne v3, v4, :cond_2

    .line 42
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zendesk/api/model/ActivityGroup;->priorityChanged:Z

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1}, Lcom/zendesk/api/model/Activity;->getVerb()Lcom/zendesk/api/model/enums/ActivityVerb;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/enums/ActivityVerb;->ASSIGNMENT:Lcom/zendesk/api/model/enums/ActivityVerb;

    if-ne v3, v4, :cond_3

    .line 44
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->lastAssign:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 45
    invoke-virtual {v1}, Lcom/zendesk/api/model/Activity;->getActor()Lcom/zendesk/api/model/Activity$ActivityActor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/Activity$ActivityActor;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->lastAssign:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    if-nez v3, :cond_4

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    .line 51
    :cond_4
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    invoke-virtual {v1}, Lcom/zendesk/api/model/Activity;->getActor()Lcom/zendesk/api/model/Activity$ActivityActor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/Activity$ActivityActor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/zendesk/api/model/ActivityGroup;->commenters:Ljava/util/List;

    invoke-virtual {v1}, Lcom/zendesk/api/model/Activity;->getActor()Lcom/zendesk/api/model/Activity$ActivityActor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/Activity$ActivityActor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v1           #act:Lcom/zendesk/api/model/Activity;
    :cond_5
    return-void
.end method
