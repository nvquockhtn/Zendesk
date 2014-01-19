.class Lcom/zendesk/android/ticket/TicketActivity$5;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->refreshTicket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->handleRequestError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->access$700(Lcom/zendesk/android/ticket/TicketActivity;Ljava/lang/Throwable;)V

    .line 299
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 300
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$800(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 291
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$500(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 292
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->invalidateMenu()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$900(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 294
    :cond_0
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$5;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->refresh()V

    .line 285
    return-void
.end method
