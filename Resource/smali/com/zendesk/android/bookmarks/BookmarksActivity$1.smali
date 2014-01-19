.class Lcom/zendesk/android/bookmarks/BookmarksActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "BookmarksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/bookmarks/BookmarksActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/bookmarks/BookmarksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 120
    const-string v1, "BookmarksActivity"

    const-string v2, "Bookmarks error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    iget-object v1, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    #getter for: Lcom/zendesk/android/bookmarks/BookmarksActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->access$100(Lcom/zendesk/android/bookmarks/BookmarksActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 124
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 126
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    #getter for: Lcom/zendesk/android/bookmarks/BookmarksActivity;->adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;
    invoke-static {v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->access$000(Lcom/zendesk/android/bookmarks/BookmarksActivity;)Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->notifyDataSetChanged()V

    .line 114
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;->this$0:Lcom/zendesk/android/bookmarks/BookmarksActivity;

    #getter for: Lcom/zendesk/android/bookmarks/BookmarksActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->access$100(Lcom/zendesk/android/bookmarks/BookmarksActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
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
    .line 130
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmarks;->refresh()V

    .line 131
    return-void
.end method
