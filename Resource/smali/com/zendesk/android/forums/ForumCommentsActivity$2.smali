.class Lcom/zendesk/android/forums/ForumCommentsActivity$2;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ForumCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumCommentsActivity;->loadComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/forums/ForumCommentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$300(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 105
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 107
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    sget v2, Lcom/zendesk/android/R$id;->forum_comments_listview:I

    invoke-virtual {v0, v2}, Lcom/zendesk/android/forums/ForumCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    #setter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v1, v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$402(Lcom/zendesk/android/forums/ForumCommentsActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    new-instance v1, Lcom/zendesk/android/forums/ForumCommentAdapter;

    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-virtual {v2}, Lcom/zendesk/android/forums/ForumCommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    iget-object v4, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;
    invoke-static {v4}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$000(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/zendesk/android/forums/ForumCommentAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/zendesk/api/model/forums/Topic;)V

    #setter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->adapter:Lcom/zendesk/android/forums/ForumCommentAdapter;
    invoke-static {v0, v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$502(Lcom/zendesk/android/forums/ForumCommentsActivity;Lcom/zendesk/android/forums/ForumCommentAdapter;)Lcom/zendesk/android/forums/ForumCommentAdapter;

    .line 94
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$400(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->adapter:Lcom/zendesk/android/forums/ForumCommentAdapter;
    invoke-static {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$500(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/android/forums/ForumCommentAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$400(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->adapter:Lcom/zendesk/android/forums/ForumCommentAdapter;
    invoke-static {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$500(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/android/forums/ForumCommentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/forums/ForumCommentAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$300(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
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
    .line 111
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$000(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic;->getComments()Lcom/zendesk/api/model/forums/Topic$TopicComments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic$TopicComments;->refresh()V

    .line 112
    return-void
.end method
