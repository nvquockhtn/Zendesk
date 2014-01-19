.class Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;
.super Ljava/lang/Object;
.source "ForumCommentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumCommentAdapter$2;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
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
    .line 188
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v1, v1, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$2$1;->this$1:Lcom/zendesk/android/forums/ForumCommentAdapter$2;

    iget-object v1, v1, Lcom/zendesk/android/forums/ForumCommentAdapter$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 194
    :cond_0
    return-void
.end method
