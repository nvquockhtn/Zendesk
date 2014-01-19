.class Lcom/zendesk/android/user/UserProfileActivity$2$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/user/UserProfileActivity$2;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/user/UserProfileActivity$2;


# direct methods
.method constructor <init>(Lcom/zendesk/android/user/UserProfileActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zendesk/android/user/UserProfileActivity$2$1;->this$1:Lcom/zendesk/android/user/UserProfileActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zendesk/android/user/UserProfileActivity$2$1;->this$1:Lcom/zendesk/android/user/UserProfileActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #getter for: Lcom/zendesk/android/user/UserProfileActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;
    invoke-static {v0}, Lcom/zendesk/android/user/UserProfileActivity;->access$600(Lcom/zendesk/android/user/UserProfileActivity;)Lcom/zendesk/android/ui/AvatarCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/user/UserProfileActivity$2$1;->this$1:Lcom/zendesk/android/user/UserProfileActivity$2;

    iget-object v1, v1, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #getter for: Lcom/zendesk/android/user/UserProfileActivity;->user:Lcom/zendesk/api/model/users/User;
    invoke-static {v1}, Lcom/zendesk/android/user/UserProfileActivity;->access$400(Lcom/zendesk/android/user/UserProfileActivity;)Lcom/zendesk/api/model/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/user/UserProfileActivity$2$1;->this$1:Lcom/zendesk/android/user/UserProfileActivity$2;

    iget-object v2, v2, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    invoke-virtual {v2}, Lcom/zendesk/android/user/UserProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/user/UserProfileActivity$2$1;->this$1:Lcom/zendesk/android/user/UserProfileActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #getter for: Lcom/zendesk/android/user/UserProfileActivity;->avatar:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/zendesk/android/user/UserProfileActivity;->access$300(Lcom/zendesk/android/user/UserProfileActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zendesk/android/user/UserProfileActivity$2$1;->this$1:Lcom/zendesk/android/user/UserProfileActivity$2;

    iget-object v5, v5, Lcom/zendesk/android/user/UserProfileActivity$2;->this$0:Lcom/zendesk/android/user/UserProfileActivity;

    #getter for: Lcom/zendesk/android/user/UserProfileActivity;->uiHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/zendesk/android/user/UserProfileActivity;->access$500(Lcom/zendesk/android/user/UserProfileActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/android/ui/AvatarCache;->getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 190
    return-void
.end method
