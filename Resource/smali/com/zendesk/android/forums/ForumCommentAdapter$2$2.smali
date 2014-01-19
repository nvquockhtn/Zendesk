.class Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;
.super Ljava/lang/Object;
.source "ForumCommentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumCommentAdapter$2;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;


# direct methods
.method constructor <init>(Lcom/zendesk/android/forums/ForumCommentAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v1, v1, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v1, v1, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$2;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v2, v2, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/forums/ForumCommentAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    invoke-static {v1, v2}, Lcom/zendesk/android/forums/ForumCommentAdapter;->access$100(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :cond_0
    return-void
.end method
