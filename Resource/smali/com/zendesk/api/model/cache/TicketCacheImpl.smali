.class public Lcom/zendesk/api/model/cache/TicketCacheImpl;
.super Ljava/lang/Object;
.source "TicketCacheImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/cache/TicketCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    }
.end annotation


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private newTicket:Lcom/zendesk/api/model/ticket/Ticket;

.field private final tickets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final ticketsActiveInUI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 1
    .parameter "baseModel"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->tickets:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 32
    return-void
.end method


# virtual methods
.method public deleteTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->tickets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public finishedWithTicket(Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/Object;)V
    .locals 3
    .parameter "t"
    .parameter "by"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    .end local v0           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public getNewTicket()Lcom/zendesk/api/model/ticket/Ticket;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->newTicket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/zendesk/api/model/ticket/Ticket;

    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->baseModel:Lcom/zendesk/api/model/BaseModel;

    sget-object v2, Lcom/zendesk/api/model/cache/TicketCacheImpl;->NEW_TICKET_ID:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/model/ticket/Ticket;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->newTicket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->newTicket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method public declared-synchronized getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 3
    .parameter "ticketId"

    .prologue
    .line 36
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/zendesk/api/model/cache/TicketCacheImpl;->NEW_TICKET_ID:Ljava/lang/Long;

    if-ne p1, v1, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/api/model/cache/TicketCacheImpl;->getNewTicket()Lcom/zendesk/api/model/ticket/Ticket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 46
    :goto_0
    monitor-exit p0

    return-object v1

    .line 39
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->tickets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;

    .line 40
    .local v0, cr:Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    if-nez v0, :cond_2

    .line 41
    new-instance v0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;

    .end local v0           #cr:Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    new-instance v1, Lcom/zendesk/api/model/ticket/Ticket;

    iget-object v2, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v1, v2, p1}, Lcom/zendesk/api/model/ticket/Ticket;-><init>(Lcom/zendesk/api/model/BaseModel;Ljava/lang/Long;)V

    invoke-direct {v0, v1}, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;-><init>(Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 42
    .restart local v0       #cr:Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->tickets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_1
    #getter for: Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->access$100(Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->lastAccessed:J
    invoke-static {v0, v1, v2}, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->access$002(Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 36
    .end local v0           #cr:Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTickets()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v4, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->tickets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 100
    .local v2, records:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v3, ticketList:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;

    .line 102
    .local v0, cr:Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    #getter for: Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->access$100(Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0           #cr:Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
    :cond_0
    return-object v3
.end method

.method public markTicketInUse(Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/Object;)V
    .locals 3
    .parameter "t"
    .parameter "by"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local v0       #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public newTicketComplete()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->newTicket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 61
    return-void
.end method

.method public onMemoryWarning()V
    .locals 7

    .prologue
    .line 110
    iget-object v5, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->tickets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 112
    .local v3, ticketEntries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;

    #getter for: Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v5}, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->access$100(Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    .line 115
    .local v2, t:Lcom/zendesk/api/model/ticket/Ticket;
    iget-object v5, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 116
    .local v4, ticketUsers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 117
    :cond_1
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->clear()V

    goto :goto_0

    .line 120
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;>;"
    .end local v2           #t:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v4           #ticketUsers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method public ticketIsInUse(Lcom/zendesk/api/model/ticket/Ticket;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl;->ticketsActiveInUI:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 89
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
