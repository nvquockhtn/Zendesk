.class Lcom/zendesk/api/model/BaseModelImpl$3;
.super Ljava/lang/Thread;
.source "BaseModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/BaseModelImpl;->getSubdomain(Lcom/zendesk/api/model/ResponseHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/BaseModelImpl;

.field final synthetic val$handler:Lcom/zendesk/api/model/ResponseHandler;

.field final synthetic val$minimal:Z


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/BaseModelImpl;Lcom/zendesk/api/model/ResponseHandler;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iput-object p2, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    iput-boolean p3, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->val$minimal:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 382
    new-instance v7, Lcom/zendesk/api/requester/SubdomainRequester;

    invoke-direct {v7}, Lcom/zendesk/api/requester/SubdomainRequester;-><init>()V

    .line 384
    .local v7, req:Lcom/zendesk/api/requester/SubdomainRequester;
    :try_start_0
    invoke-virtual {v7}, Lcom/zendesk/api/requester/SubdomainRequester;->execute()V

    .line 385
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/zendesk/api/requester/SubdomainRequester;->getResponseString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v8, subJSON:Lorg/json/JSONObject;
    const-string v0, "url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, sub:Ljava/lang/String;
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iget-object v1, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #getter for: Lcom/zendesk/api/model/BaseModelImpl;->baseCacheDir:Ljava/lang/String;
    invoke-static {v1}, Lcom/zendesk/api/model/BaseModelImpl;->access$000(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #getter for: Lcom/zendesk/api/model/BaseModelImpl;->email:Ljava/lang/String;
    invoke-static {v3}, Lcom/zendesk/api/model/BaseModelImpl;->access$100(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #getter for: Lcom/zendesk/api/model/BaseModelImpl;->password:Ljava/lang/String;
    invoke-static {v4}, Lcom/zendesk/api/model/BaseModelImpl;->access$200(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #getter for: Lcom/zendesk/api/model/BaseModelImpl;->userAgent:Ljava/lang/String;
    invoke-static {v5}, Lcom/zendesk/api/model/BaseModelImpl;->access$300(Lcom/zendesk/api/model/BaseModelImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/api/model/BaseModelImpl;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iget-object v1, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    iget-boolean v3, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->val$minimal:Z

    #calls: Lcom/zendesk/api/model/BaseModelImpl;->login(Lcom/zendesk/api/model/ResponseHandler;Z)V
    invoke-static {v0, v1, v3}, Lcom/zendesk/api/model/BaseModelImpl;->access$400(Lcom/zendesk/api/model/BaseModelImpl;Lcom/zendesk/api/model/ResponseHandler;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v2           #sub:Ljava/lang/String;
    .end local v8           #subJSON:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v6

    .line 390
    .local v6, e:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$3;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/requester/SubdomainRequester;

    invoke-virtual {v0, v1, v6}, Lcom/zendesk/api/model/BaseModelImpl;->loginFailed(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
