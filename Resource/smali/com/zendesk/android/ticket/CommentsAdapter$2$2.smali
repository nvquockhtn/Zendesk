.class Lcom/zendesk/android/ticket/CommentsAdapter$2$2;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/CommentsAdapter$2;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/CommentsAdapter$2;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$2;->val$header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$2;

    iget-object v1, v1, Lcom/zendesk/android/ticket/CommentsAdapter$2;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter$2$2;->this$1:Lcom/zendesk/android/ticket/CommentsAdapter$2;

    iget-object v2, v2, Lcom/zendesk/android/ticket/CommentsAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/ticket/CommentsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    invoke-static {v1, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$200(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    return-void
.end method
