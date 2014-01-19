.class Lcom/zendesk/android/ticketlist/TicketListActivity$4;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticketlist/TicketListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticketlist/TicketListActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    iput-object p2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 263
    instance-of v2, p1, Lcom/zendesk/api/http/RequestException;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 264
    check-cast v0, Lcom/zendesk/api/http/RequestException;

    .line 266
    .local v0, re:Lcom/zendesk/api/http/RequestException;
    invoke-virtual {v0}, Lcom/zendesk/api/http/RequestException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    .line 267
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->val$data:Landroid/content/Intent;

    const-string v3, "TICKETID"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 268
    .local v1, ticketId:Ljava/lang/Long;
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v2}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$200(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v3}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$200(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zendesk/api/model/views/View;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->removeListItem(Ljava/lang/Object;)V

    .line 269
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    invoke-static {v2}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$000(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    invoke-static {v2}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$000(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->notifyDataSetChanged()V

    .line 274
    .end local v0           #re:Lcom/zendesk/api/http/RequestException;
    .end local v1           #ticketId:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    iget-object v3, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->hideLoading:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$600(Lcom/zendesk/android/ticketlist/TicketListActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zendesk/android/ticketlist/TicketListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method protected responseSuccess()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->hideLoading:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$600(Lcom/zendesk/android/ticketlist/TicketListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method protected run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    .line 249
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->showLoading:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$500(Lcom/zendesk/android/ticketlist/TicketListActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/android/ticketlist/TicketListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->val$data:Landroid/content/Intent;

    const-string v2, "TICKETID"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 251
    .local v0, ticketId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$200(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/views/View;->checkTicketMemberOfView(Ljava/lang/Long;)V

    .line 254
    :cond_0
    return-void
.end method
