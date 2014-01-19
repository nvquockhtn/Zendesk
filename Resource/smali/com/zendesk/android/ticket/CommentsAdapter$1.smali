.class Lcom/zendesk/android/ticket/CommentsAdapter$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;->loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

.field final synthetic val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iput-object p2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    iput-object p3, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->setAsUnknownUser()V

    .line 309
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->author:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/ticket/CommentsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    invoke-static {v1, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$200(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-static {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->author:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    #calls: Lcom/zendesk/android/ticket/CommentsAdapter;->setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
    invoke-static {v0, v1, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$100(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    .line 303
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
    .line 294
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->refresh()V

    .line 295
    return-void
.end method
