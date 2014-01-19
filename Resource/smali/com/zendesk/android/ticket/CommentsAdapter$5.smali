.class Lcom/zendesk/android/ticket/CommentsAdapter$5;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/shared/Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

.field final synthetic val$a:Lcom/zendesk/api/model/shared/Attachment;

.field final synthetic val$viewIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iput-object p2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->val$viewIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->val$a:Lcom/zendesk/api/model/shared/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/ticket/CommentsAdapter$5$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/CommentsAdapter$5$2;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter$5;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 494
    :cond_0
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/shared/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/shared/Attachment;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$5;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/CommentsAdapter$5$1;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter$5;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    :cond_0
    return-void
.end method
