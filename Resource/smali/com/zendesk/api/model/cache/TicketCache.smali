.class public interface abstract Lcom/zendesk/api/model/cache/TicketCache;
.super Ljava/lang/Object;
.source "TicketCache.java"


# static fields
.field public static final NEW_TICKET_ID:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zendesk/api/model/cache/TicketCache;->NEW_TICKET_ID:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public abstract deleteTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
.end method

.method public abstract finishedWithTicket(Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/Object;)V
.end method

.method public abstract getNewTicket()Lcom/zendesk/api/model/ticket/Ticket;
.end method

.method public abstract getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;
.end method

.method public abstract getTickets()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract markTicketInUse(Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/Object;)V
.end method

.method public abstract newTicketComplete()V
.end method

.method public abstract onMemoryWarning()V
.end method

.method public abstract ticketIsInUse(Lcom/zendesk/api/model/ticket/Ticket;)Z
.end method
