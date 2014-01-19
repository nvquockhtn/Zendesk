.class Lcom/zendesk/api/ZendeskModel$1$1;
.super Ljava/lang/Object;
.source "ZendeskModel.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/ZendeskModel$1;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/ActivityStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/api/ZendeskModel$1;


# direct methods
.method constructor <init>(Lcom/zendesk/api/ZendeskModel$1;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zendesk/api/ZendeskModel$1$1;->this$1:Lcom/zendesk/api/ZendeskModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel$1$1;->this$1:Lcom/zendesk/api/ZendeskModel$1;

    iget-object v0, v0, Lcom/zendesk/api/ZendeskModel$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/ActivityStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/ActivityStream;>;"
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel$1$1;->this$1:Lcom/zendesk/api/ZendeskModel$1;

    iget-object v0, v0, Lcom/zendesk/api/ZendeskModel$1;->this$0:Lcom/zendesk/api/ZendeskModel;

    const-class v1, Lcom/zendesk/api/model/ActivityStream;

    #calls: Lcom/zendesk/api/ZendeskModel;->unlistRequest(Ljava/lang/Class;)V
    invoke-static {v0, v1}, Lcom/zendesk/api/ZendeskModel;->access$000(Lcom/zendesk/api/ZendeskModel;Ljava/lang/Class;)V

    .line 119
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel$1$1;->this$1:Lcom/zendesk/api/ZendeskModel$1;

    iget-object v0, v0, Lcom/zendesk/api/ZendeskModel$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/ResponseHandler;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V

    .line 120
    return-void
.end method
