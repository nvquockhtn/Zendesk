.class Lcom/zendesk/api/model/users/User$1;
.super Ljava/lang/Thread;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/users/User;->getAvatar(Lcom/zendesk/api/model/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/users/User;

.field final synthetic val$avatarRequest:Lcom/zendesk/api/requester/UserAvatarRequester;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/users/User;Lcom/zendesk/api/requester/UserAvatarRequester;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    iput-object p2, p0, Lcom/zendesk/api/model/users/User$1;->val$avatarRequest:Lcom/zendesk/api/requester/UserAvatarRequester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->val$avatarRequest:Lcom/zendesk/api/requester/UserAvatarRequester;

    invoke-virtual {v1}, Lcom/zendesk/api/requester/UserAvatarRequester;->execute()V

    .line 401
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    sget-object v2, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

    #setter for: Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;
    invoke-static {v1, v2}, Lcom/zendesk/api/model/users/User;->access$002(Lcom/zendesk/api/model/users/User;Lcom/zendesk/api/model/shared/DownloadState;)Lcom/zendesk/api/model/shared/DownloadState;

    .line 402
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    const-string v2, "avatar-request"

    #calls: Lcom/zendesk/api/model/users/User;->respondSuccess(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/zendesk/api/model/users/User;->access$100(Lcom/zendesk/api/model/users/User;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    #setter for: Lcom/zendesk/api/model/users/User;->localFilePath:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/zendesk/api/model/users/User;->access$202(Lcom/zendesk/api/model/users/User;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    #setter for: Lcom/zendesk/api/model/users/User;->photoURL:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/zendesk/api/model/users/User;->access$302(Lcom/zendesk/api/model/users/User;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    sget-object v2, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    #setter for: Lcom/zendesk/api/model/users/User;->avatarState:Lcom/zendesk/api/model/shared/DownloadState;
    invoke-static {v1, v2}, Lcom/zendesk/api/model/users/User;->access$002(Lcom/zendesk/api/model/users/User;Lcom/zendesk/api/model/shared/DownloadState;)Lcom/zendesk/api/model/shared/DownloadState;

    .line 407
    iget-object v1, p0, Lcom/zendesk/api/model/users/User$1;->this$0:Lcom/zendesk/api/model/users/User;

    const-string v2, "avatar-request"

    #calls: Lcom/zendesk/api/model/users/User;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/zendesk/api/model/users/User;->access$400(Lcom/zendesk/api/model/users/User;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
