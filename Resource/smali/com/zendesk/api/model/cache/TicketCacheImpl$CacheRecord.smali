.class Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;
.super Ljava/lang/Object;
.source "TicketCacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/cache/TicketCacheImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheRecord"
.end annotation


# instance fields
.field private lastAccessed:J

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 2
    .parameter "ticket"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->lastAccessed:J

    .line 131
    return-void
.end method

.method static synthetic access$002(Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->lastAccessed:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zendesk/api/model/cache/TicketCacheImpl$CacheRecord;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method
