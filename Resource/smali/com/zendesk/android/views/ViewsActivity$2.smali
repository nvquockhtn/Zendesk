.class Lcom/zendesk/android/views/ViewsActivity$2;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ViewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/views/ViewsActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/views/ViewsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/views/ViewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 166
    const-string v1, "ViewsActivity"

    const-string v2, "Views refresh error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/views/ViewsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    new-instance v2, Lcom/zendesk/android/views/ViewsAdapter;

    iget-object v3, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    iget-object v4, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-direct {v2, v3, v4}, Lcom/zendesk/android/views/ViewsAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    #setter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1, v2}, Lcom/zendesk/android/views/ViewsActivity;->access$002(Lcom/zendesk/android/views/ViewsActivity;Lcom/zendesk/android/views/ViewsAdapter;)Lcom/zendesk/android/views/ViewsAdapter;

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$100(Lcom/zendesk/android/views/ViewsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ViewsWithCounts;->getListItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/android/views/ViewsAdapter;->setViews(Ljava/util/List;)V

    .line 174
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 175
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/views/ViewsActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 177
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_1
    return-void
.end method

.method protected responseSuccess()V
    .locals 5

    .prologue
    .line 147
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/views/ViewsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    new-instance v2, Lcom/zendesk/android/views/ViewsAdapter;

    iget-object v3, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    iget-object v4, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-direct {v2, v3, v4}, Lcom/zendesk/android/views/ViewsAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    #setter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1, v2}, Lcom/zendesk/android/views/ViewsActivity;->access$002(Lcom/zendesk/android/views/ViewsActivity;Lcom/zendesk/android/views/ViewsAdapter;)Lcom/zendesk/android/views/ViewsAdapter;

    .line 150
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    sget v2, Lcom/zendesk/android/R$id;->views_list:I

    invoke-virtual {v1, v2}, Lcom/zendesk/android/views/ViewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 151
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/views/ViewsAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    .end local v0           #listView:Landroid/widget/ListView;
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ViewsWithCounts;->getListItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/android/views/ViewsAdapter;->setViews(Ljava/util/List;)V

    .line 157
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/views/ViewsAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #getter for: Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$100(Lcom/zendesk/android/views/ViewsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity$2;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    #calls: Lcom/zendesk/android/views/ViewsActivity;->checkCounts()V
    invoke-static {v1}, Lcom/zendesk/android/views/ViewsActivity;->access$200(Lcom/zendesk/android/views/ViewsActivity;)V

    .line 162
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
    .line 181
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ViewsWithCounts;->refresh()V

    .line 182
    return-void
.end method
