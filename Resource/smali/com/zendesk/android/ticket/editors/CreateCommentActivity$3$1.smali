.class Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;
.super Ljava/lang/Object;
.source "CreateCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;

.field final synthetic val$a:Lcom/zendesk/api/model/shared/Attachment;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;

    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;->val$a:Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->comment:Lcom/zendesk/api/model/ticket/audits/Comment;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$300(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;->val$a:Lcom/zendesk/api/model/shared/Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->adapter:Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$400(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 577
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3$1;->this$1:Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;

    iget-object v0, v0, Lcom/zendesk/android/ticket/editors/CreateCommentActivity$3;->this$0:Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    #calls: Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->checkEditState()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;->access$000(Lcom/zendesk/android/ticket/editors/CreateCommentActivity;)V

    .line 578
    return-void
.end method
