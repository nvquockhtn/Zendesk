.class Lcom/zendesk/api/model/ZDModelObject$2;
.super Ljava/lang/Thread;
.source "ZDModelObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/ZDModelObject;->execute(Lcom/zendesk/api/http/Request;Ljava/lang/String;Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/ZDModelObject;

.field final synthetic val$request:Ljava/lang/String;

.field final synthetic val$requester:Lcom/zendesk/api/http/Request;

.field final synthetic val$responseParser:Lcom/zendesk/api/model/ZDModelObject$ResponseParser;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ZDModelObject;Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$2;,"Lcom/zendesk/api/model/ZDModelObject.2;"
    iput-object p1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    iput-object p2, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$requester:Lcom/zendesk/api/http/Request;

    iput-object p3, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$responseParser:Lcom/zendesk/api/model/ZDModelObject$ResponseParser;

    iput-object p4, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$request:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$2;,"Lcom/zendesk/api/model/ZDModelObject.2;"
    :try_start_0
    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$requester:Lcom/zendesk/api/http/Request;

    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->execute()V

    .line 137
    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$requester:Lcom/zendesk/api/http/Request;

    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$requester:Lcom/zendesk/api/http/Request;

    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->getError()Lcom/zendesk/api/http/RequestException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$request:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/zendesk/api/model/ZDModelObject;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v0           #e:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$responseParser:Lcom/zendesk/api/model/ZDModelObject$ResponseParser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$responseParser:Lcom/zendesk/api/model/ZDModelObject$ResponseParser;

    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$requester:Lcom/zendesk/api/http/Request;

    invoke-virtual {v2}, Lcom/zendesk/api/http/Request;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/zendesk/api/model/ZDModelObject$ResponseParser;->parse(Ljava/lang/String;)V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/zendesk/api/model/ZDModelObject$2;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$2;->val$request:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ZDModelObject;->respondSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
