.class Lcom/zendesk/android/forums/ForumCommentAdapter$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ForumCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/forums/ForumCommentAdapter;->loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

.field final synthetic val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    iput-object p2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    iput-object p3, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->setAsUnknownUser()V

    .line 177
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAuthor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/forums/ForumCommentAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    invoke-static {v1, v2}, Lcom/zendesk/android/forums/ForumCommentAdapter;->access$100(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    return-void
.end method

.method protected responseSuccess()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    iget-object v0, v0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAuthor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$row:Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;

    #calls: Lcom/zendesk/android/forums/ForumCommentAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V
    invoke-static {v0, v1, v2}, Lcom/zendesk/android/forums/ForumCommentAdapter;->access$000(Lcom/zendesk/android/forums/ForumCommentAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;)V

    .line 172
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
    .line 163
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->refresh()V

    .line 164
    return-void
.end method
