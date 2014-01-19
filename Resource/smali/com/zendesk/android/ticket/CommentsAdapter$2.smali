.class Lcom/zendesk/android/ticket/CommentsAdapter$2;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
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
        "Lcom/zendesk/api/model/users/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

.field final synthetic val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iput-object p2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iput-object p3, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/ticket/CommentsAdapter$2$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/CommentsAdapter$2$2;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter$2;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
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
            "Lcom/zendesk/api/model/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/users/User;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/ticket/CommentsAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/ticket/CommentsAdapter$2$1;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter$2;Lcom/zendesk/api/model/ZDModelObject;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    :cond_0
    return-void
.end method
