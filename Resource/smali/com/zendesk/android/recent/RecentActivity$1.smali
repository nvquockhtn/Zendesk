.class Lcom/zendesk/android/recent/RecentActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "RecentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/recent/RecentActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/recent/RecentActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/recent/RecentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 126
    const-string v1, "RecentActivity"

    const-string v2, "Recent tickets error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/recent/RecentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    #getter for: Lcom/zendesk/android/recent/RecentActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/recent/RecentActivity;->access$100(Lcom/zendesk/android/recent/RecentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 130
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/recent/RecentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 132
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/recent/RecentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    #getter for: Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;
    invoke-static {v1}, Lcom/zendesk/android/recent/RecentActivity;->access$000(Lcom/zendesk/android/recent/RecentActivity;)Lcom/zendesk/android/recent/RecentAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    sget v2, Lcom/zendesk/android/R$id;->ticketlist_list:I

    invoke-virtual {v1, v2}, Lcom/zendesk/android/recent/RecentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 114
    .local v0, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    new-instance v2, Lcom/zendesk/android/recent/RecentAdapter;

    iget-object v3, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    invoke-direct {v2, v3}, Lcom/zendesk/android/recent/RecentAdapter;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;
    invoke-static {v1, v2}, Lcom/zendesk/android/recent/RecentActivity;->access$002(Lcom/zendesk/android/recent/RecentActivity;Lcom/zendesk/android/recent/RecentAdapter;)Lcom/zendesk/android/recent/RecentAdapter;

    .line 115
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    #getter for: Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;
    invoke-static {v1}, Lcom/zendesk/android/recent/RecentActivity;->access$000(Lcom/zendesk/android/recent/RecentActivity;)Lcom/zendesk/android/recent/RecentAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    .end local v0           #listView:Landroid/widget/ListView;
    :goto_0
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    #getter for: Lcom/zendesk/android/recent/RecentActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/recent/RecentActivity;->access$100(Lcom/zendesk/android/recent/RecentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity$1;->this$0:Lcom/zendesk/android/recent/RecentActivity;

    #getter for: Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;
    invoke-static {v1}, Lcom/zendesk/android/recent/RecentActivity;->access$000(Lcom/zendesk/android/recent/RecentActivity;)Lcom/zendesk/android/recent/RecentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/recent/RecentAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getRecentTickets()Lcom/zendesk/api/model/views/RecentTickets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/RecentTickets;->refresh()V

    .line 137
    return-void
.end method
