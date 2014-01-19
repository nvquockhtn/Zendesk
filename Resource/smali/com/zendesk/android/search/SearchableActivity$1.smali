.class Lcom/zendesk/android/search/SearchableActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "SearchableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/search/SearchableActivity;->performSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/search/SearchableActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/search/SearchableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/search/SearchableActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "SearchableActivity"

    const-string v2, "Search error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/search/SearchableActivity;->access$000(Lcom/zendesk/android/search/SearchableActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    sget v1, Lcom/zendesk/android/R$string;->search_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 105
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/search/SearchableActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 107
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/search/SearchableActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/search/SearchableActivity;->access$000(Lcom/zendesk/android/search/SearchableActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;
    invoke-static {v0}, Lcom/zendesk/android/search/SearchableActivity;->access$100(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/api/model/search/Search;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/search/Search;->getListItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;
    invoke-static {v0}, Lcom/zendesk/android/search/SearchableActivity;->access$200(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/android/search/SearchAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;
    invoke-static {v0}, Lcom/zendesk/android/search/SearchableActivity;->access$100(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/api/model/search/Search;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/search/Search;->getListItems()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/search/SearchResult;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/search/SearchAdapter;->viewResult(Lcom/zendesk/api/model/search/SearchResult;)V

    .line 92
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/search/SearchableActivity;->finish()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;
    invoke-static {v0}, Lcom/zendesk/android/search/SearchableActivity;->access$200(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/android/search/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/search/SearchAdapter;->notifyDataSetChanged()V

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
    .line 111
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity$1;->this$0:Lcom/zendesk/android/search/SearchableActivity;

    #getter for: Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;
    invoke-static {v0}, Lcom/zendesk/android/search/SearchableActivity;->access$100(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/api/model/search/Search;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/search/Search;->refresh()V

    .line 112
    return-void
.end method
