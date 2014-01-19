.class Lcom/zendesk/android/adapters/PagingAdapter$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "PagingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/adapters/PagingAdapter;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/adapters/PagingAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/adapters/PagingAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter$1;,"Lcom/zendesk/android/adapters/PagingAdapter.1;"
    iput-object p1, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 92
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter$1;,"Lcom/zendesk/android/adapters/PagingAdapter.1;"
    const-string v1, "PagingAdapter"

    const-string v2, "Paging error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    .line 94
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/adapters/PagingAdapter;->dataLoaded()V

    .line 96
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 97
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    iget-object v1, v1, Lcom/zendesk/android/adapters/PagingAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 98
    return-void
.end method

.method protected responseSuccess()V
    .locals 2

    .prologue
    .line 86
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter$1;,"Lcom/zendesk/android/adapters/PagingAdapter.1;"
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zendesk/android/adapters/PagingAdapter;->loading:Z

    .line 87
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/adapters/PagingAdapter;->dataLoaded()V

    .line 88
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
    .line 102
    .local p0, this:Lcom/zendesk/android/adapters/PagingAdapter$1;,"Lcom/zendesk/android/adapters/PagingAdapter.1;"
    iget-object v0, p0, Lcom/zendesk/android/adapters/PagingAdapter$1;->this$0:Lcom/zendesk/android/adapters/PagingAdapter;

    #getter for: Lcom/zendesk/android/adapters/PagingAdapter;->modelObject:Lcom/zendesk/api/model/ZDPagingModelObject;
    invoke-static {v0}, Lcom/zendesk/android/adapters/PagingAdapter;->access$000(Lcom/zendesk/android/adapters/PagingAdapter;)Lcom/zendesk/api/model/ZDPagingModelObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ZDPagingModelObject;->refresh()V

    .line 103
    return-void
.end method
