.class Lcom/zendesk/api/model/BaseModelImpl$5;
.super Ljava/lang/Thread;
.source "BaseModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/BaseModelImpl;->login(Lcom/zendesk/api/model/ResponseHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/BaseModelImpl;

.field final synthetic val$minimal:Z


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/BaseModelImpl;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iput-boolean p2, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->val$minimal:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 426
    :try_start_0
    new-instance v1, Lcom/zendesk/api/requester/CurrentUserRequester;

    invoke-direct {v1}, Lcom/zendesk/api/requester/CurrentUserRequester;-><init>()V

    .line 427
    .local v1, req:Lcom/zendesk/api/requester/CurrentUserRequester;
    invoke-virtual {v1}, Lcom/zendesk/api/requester/CurrentUserRequester;->execute()V

    .line 428
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/zendesk/api/requester/CurrentUserRequester;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, userJSON:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iget-object v4, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #getter for: Lcom/zendesk/api/model/BaseModelImpl;->userCache:Lcom/zendesk/api/model/cache/UserCache;
    invoke-static {v4}, Lcom/zendesk/api/model/BaseModelImpl;->access$600(Lcom/zendesk/api/model/BaseModelImpl;)Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v4

    invoke-static {v2}, Lcom/zendesk/api/model/users/User;->getId(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v4

    iput-object v4, v3, Lcom/zendesk/api/model/BaseModelImpl;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 430
    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iget-object v3, v3, Lcom/zendesk/api/model/BaseModelImpl;->currentUser:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v3, v2}, Lcom/zendesk/api/model/users/User;->update(Lorg/json/JSONObject;)V

    .line 431
    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v4, Lcom/zendesk/api/model/users/User;

    invoke-virtual {v3, v4}, Lcom/zendesk/api/model/BaseModelImpl;->unlistRequest(Ljava/lang/Class;)V

    .line 432
    iget-boolean v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->val$minimal:Z

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    invoke-virtual {v3}, Lcom/zendesk/api/model/BaseModelImpl;->checkForLoginCompletion()V

    .line 440
    .end local v1           #req:Lcom/zendesk/api/requester/CurrentUserRequester;
    .end local v2           #userJSON:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 435
    .restart local v1       #req:Lcom/zendesk/api/requester/CurrentUserRequester;
    .restart local v2       #userJSON:Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #calls: Lcom/zendesk/api/model/BaseModelImpl;->continueLogin()V
    invoke-static {v3}, Lcom/zendesk/api/model/BaseModelImpl;->access$500(Lcom/zendesk/api/model/BaseModelImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    .end local v1           #req:Lcom/zendesk/api/requester/CurrentUserRequester;
    .end local v2           #userJSON:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$5;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v4, Lcom/zendesk/api/model/users/User;

    invoke-virtual {v3, v4, v0}, Lcom/zendesk/api/model/BaseModelImpl;->loginFailed(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
