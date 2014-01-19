.class Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;
.super Ljava/lang/Object;
.source "CreateCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

.field final synthetic val$a:Lcom/zendesk/api/model/shared/Attachment;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->val$a:Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$200(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$200(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$200(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$300(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->val$a:Lcom/zendesk/api/model/shared/Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$400(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 517
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #calls: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->checkEditState()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$000(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V

    .line 518
    return-void
.end method
