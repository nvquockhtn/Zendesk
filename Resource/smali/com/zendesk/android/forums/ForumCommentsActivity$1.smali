.class Lcom/zendesk/android/forums/ForumCommentsActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ForumCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumCommentsActivity;->loginSuccess()V
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
    .line 50
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$300(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 67
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 68
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 70
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$100(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;
    invoke-static {v1}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$000(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/forums/Topic;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #calls: Lcom/zendesk/android/forums/ForumCommentsActivity;->loadComments()V
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$200(Lcom/zendesk/android/forums/ForumCommentsActivity;)V

    .line 61
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
    .line 54
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity$1;->this$0:Lcom/zendesk/android/forums/ForumCommentsActivity;

    #getter for: Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;
    invoke-static {v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->access$000(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic;->refresh()V

    .line 55
    return-void
.end method
