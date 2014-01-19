.class Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "IncidentTicketListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$500(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 197
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 199
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #calls: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->setTitle()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$000(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)V

    .line 174
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    new-instance v1, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    iget-object v3, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v3}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$200(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;-><init>(Landroid/content/Context;Lcom/zendesk/api/model/ticket/Ticket;)V

    #setter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v0, v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$102(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    .line 176
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$300(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$300(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->notifyDataSetChanged()V

    .line 183
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$400(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I
    invoke-static {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$400(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 184
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$300(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I
    invoke-static {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$400(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 188
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$500(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    :cond_1
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v1}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$200(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$300(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->access$200(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->refresh()V

    .line 204
    return-void
.end method
