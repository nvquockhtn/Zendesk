.class public Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "Ticket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/ticket/Ticket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TicketAudits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_AUDITS:Ljava/lang/String; = "audits"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/ticket/audits/TicketAudit;
        path = "audits"
        type = Ljava/util/List;
    .end annotation
.end field

.field private static final KEY_COUNT:Ljava/lang/String; = "count"


# instance fields
.field private allAudits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation
.end field

.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
    .end annotation
.end field

.field private currentPage:I

.field hasNextPage:Z

.field private tempAudits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zendesk/api/model/ticket/Ticket;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 1
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->allAudits:Ljava/util/List;

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 774
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->allAudits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 775
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->count:Ljava/lang/Integer;

    .line 776
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    monitor-exit p0

    return-void

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 4

    .prologue
    .line 832
    new-instance v0, Lcom/zendesk/api/requester/TicketAuditsRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    #getter for: Lcom/zendesk/api/model/ticket/Ticket;->id:Ljava/lang/Long;
    invoke-static {v1}, Lcom/zendesk/api/model/ticket/Ticket;->access$100(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->currentPage:I

    invoke-direct {v0, v1, v2, v3}, Lcom/zendesk/api/requester/TicketAuditsRequester;-><init>(JI)V

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v0, commentAudits:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/audits/TicketAudit;>;"
    iget-object v3, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->allAudits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 844
    .local v2, ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getComment()Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 845
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 848
    .end local v2           #ta:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 849
    return-object v0
.end method

.method public declared-synchronized getListItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->allAudits:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->allAudits:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onceParsed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->onceParsed()V

    .line 811
    iget-boolean v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->hasNextPage:Z

    if-eqz v0, :cond_0

    .line 812
    iget v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->currentPage:I

    .line 813
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V

    .line 818
    :goto_0
    return-void

    .line 815
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->allAudits:Ljava/util/List;

    .line 816
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 791
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "count"

    invoke-static {v3, v5}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->count:Ljava/lang/Integer;

    .line 792
    const-string v5, "next_page"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->hasNextPage:Z

    .line 793
    const-string v5, "audits"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 795
    .local v1, audits:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v4, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/audits/TicketAudit;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 798
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 799
    .local v0, audit:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 800
    new-instance v5, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    iget-object v6, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->this$0:Lcom/zendesk/api/model/ticket/Ticket;

    #getter for: Lcom/zendesk/api/model/ticket/Ticket;->baseModel:Lcom/zendesk/api/model/BaseModel;
    invoke-static {v6}, Lcom/zendesk/api/model/ticket/Ticket;->access$000(Lcom/zendesk/api/model/ticket/Ticket;)Lcom/zendesk/api/model/BaseModel;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 792
    .end local v0           #audit:Lorg/json/JSONObject;
    .end local v1           #audits:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/audits/TicketAudit;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 804
    .restart local v1       #audits:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v4       #tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/audits/TicketAudit;>;"
    :cond_2
    iget-object v5, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 805
    return-void
.end method

.method public declared-synchronized refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 781
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->currentPage:I

    .line 782
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 783
    invoke-super {p0}, Lcom/zendesk/api/model/ZDModelObject;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    monitor-exit p0

    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ResponseHandler",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, responseHandler:Lcom/zendesk/api/model/ResponseHandler;,"Lcom/zendesk/api/model/ResponseHandler<Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "refresh-req"

    invoke-virtual {p0, v0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->requestInProgress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    const/4 v0, 0x1

    iput v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->currentPage:I

    .line 751
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->tempAudits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 753
    :cond_0
    invoke-super {p0, p1}, Lcom/zendesk/api/model/ZDModelObject;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
