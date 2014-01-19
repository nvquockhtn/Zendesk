.class Lcom/zendesk/android/ticketlist/TicketListActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticketlist/TicketListActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticketlist/TicketListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 190
    const-string v1, "TicketListActivity"

    const-string v2, "Error loading ticket list"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$300(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 194
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 196
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$000(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    new-instance v1, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$100(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v3}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$200(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/api/model/views/View;Lcom/zendesk/android/ui/ZDFragmentActivity;)V

    #setter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    invoke-static {v0, v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$002(Lcom/zendesk/android/ticketlist/TicketListActivity;Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    .line 176
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$100(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$000(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$000(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->notifyDataSetChanged()V

    .line 179
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$100(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 180
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$300(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$400(Lcom/zendesk/android/ticketlist/TicketListActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$100(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I
    invoke-static {v1}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$400(Lcom/zendesk/android/ticketlist/TicketListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 186
    :cond_1
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
    .line 200
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;->this$0:Lcom/zendesk/android/ticketlist/TicketListActivity;

    #getter for: Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;
    invoke-static {v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->access$200(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/api/model/views/View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewTickets;->refresh()V

    .line 201
    return-void
.end method
