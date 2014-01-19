.class Lcom/zendesk/android/ticket/TicketActivity$12;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->loadNextPageAndGoToNextPage()V
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
    .line 788
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->handleRequestError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->access$700(Lcom/zendesk/android/ticket/TicketActivity;Ljava/lang/Throwable;)V

    .line 807
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 809
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 800
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->nextTicket()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$2200(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 801
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
    .line 792
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$2100(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->mayBeMorePages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$12;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$2100(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->nextPage()V

    .line 795
    :cond_0
    return-void
.end method
