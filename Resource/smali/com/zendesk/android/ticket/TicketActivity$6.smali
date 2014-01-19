.class Lcom/zendesk/android/ticket/TicketActivity$6;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->refreshIncidentsLinkedToTicket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 335
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 336
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->invalidateMenu()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$900(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 337
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1100(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 326
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 327
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$500(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 330
    :cond_0
    return-void
.end method

.method protected run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketType()Lcom/zendesk/api/model/account/TicketType;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->problemTicketId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1000(Lcom/zendesk/android/ticket/TicketActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->problemTicketId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1000(Lcom/zendesk/android/ticket/TicketActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 312
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->problemTicketId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$1000(Lcom/zendesk/android/ticket/TicketActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 313
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->refresh()V

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketType()Lcom/zendesk/api/model/account/TicketType;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 315
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 316
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->refresh()V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$6;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->refresh()V

    goto :goto_0
.end method
