.class Lcom/zendesk/android/ticket/CommentsAdapter$5$1;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/CommentsAdapter$5;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter$5;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 474
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v1, v1, Lcom/zendesk/android/ticket/CommentsAdapter$5;->val$viewIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$5;

    iget-object v2, v2, Lcom/zendesk/android/ticket/CommentsAdapter$5;->val$a:Lcom/zendesk/api/model/shared/Attachment;

    #calls: Lcom/zendesk/android/ticket/CommentsAdapter;->startViewIntent(Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V
    invoke-static {v0, v1, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$1100(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V

    .line 475
    return-void
.end method
