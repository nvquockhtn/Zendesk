.class Lcom/zendesk/api/model/ZDModelObject$1;
.super Ljava/lang/Thread;
.source "ZDModelObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/ZDModelObject;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/ZDModelObject;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$1;,"Lcom/zendesk/api/model/ZDModelObject.1;"
    iput-object p1, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$1;,"Lcom/zendesk/api/model/ZDModelObject.1;"
    :try_start_0
    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ZDModelObject;->getAPIRequester()Lcom/zendesk/api/http/Request;

    move-result-object v1

    .line 86
    .local v1, req:Lcom/zendesk/api/http/Request;
    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->execute()V

    .line 87
    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->hasError()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->getError()Lcom/zendesk/api/http/RequestException;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1           #req:Lcom/zendesk/api/http/Request;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    const-string v3, "refresh-req"

    invoke-virtual {v2, v3, v0}, Lcom/zendesk/api/model/ZDModelObject;->respondWithError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v0           #e:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 88
    .restart local v1       #req:Lcom/zendesk/api/http/Request;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ZDModelObject;->beforeParsed()V

    .line 89
    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    invoke-virtual {v1}, Lcom/zendesk/api/http/Request;->getResponseString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/ZDModelObject;->parseResponse(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ZDModelObject;->onceParsed()V

    .line 91
    iget-object v2, p0, Lcom/zendesk/api/model/ZDModelObject$1;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    const-string v3, "refresh-req"

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/ZDModelObject;->respondSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
