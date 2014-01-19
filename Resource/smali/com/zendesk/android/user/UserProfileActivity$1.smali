.class Lcom/zendesk/android/user/UserProfileActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/user/UserProfileActivity;->loadUser(Lcom/zendesk/api/model/users/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/user/UserProfileActivity;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/user/UserProfileActivity;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    iput-object p2, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 166
    const-string v0, "UserProfileActivity"

    const-string v1, "Load user failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/user/UserProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->setAsUnknownUser()V

    .line 169
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #getter for: Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/zendesk/android/user/UserProfileActivity;->access$300(Lcom/zendesk/android/user/UserProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->val$u:Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/user/UserProfileActivity;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    invoke-static {v1, v2}, Lcom/zendesk/android/user/UserProfileActivity;->access$200(Lcom/zendesk/android/user/UserProfileActivity;Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #calls: Lcom/zendesk/android/user/UserProfileActivity;->refreshUserDetails()V
    invoke-static {v0}, Lcom/zendesk/android/user/UserProfileActivity;->access$100(Lcom/zendesk/android/user/UserProfileActivity;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/user/UserProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #calls: Lcom/zendesk/android/user/UserProfileActivity;->setAvatar()V
    invoke-static {v0}, Lcom/zendesk/android/user/UserProfileActivity;->access$000(Lcom/zendesk/android/user/UserProfileActivity;)V

    .line 160
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #calls: Lcom/zendesk/android/user/UserProfileActivity;->refreshUserDetails()V
    invoke-static {v0}, Lcom/zendesk/android/user/UserProfileActivity;->access$100(Lcom/zendesk/android/user/UserProfileActivity;)V

    .line 162
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
    .line 176
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->refresh()V

    .line 177
    return-void
.end method
