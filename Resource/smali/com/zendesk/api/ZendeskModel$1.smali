.class Lcom/zendesk/api/ZendeskModel$1;
.super Ljava/lang/Object;
.source "ZendeskModel.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/ZendeskModel;->login(Lcom/zendesk/api/model/ResponseHandler;)V
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
        "Lcom/zendesk/api/model/BaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/ZendeskModel;

.field final synthetic val$handler:Lcom/zendesk/api/model/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/zendesk/api/ZendeskModel;Lcom/zendesk/api/model/ResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zendesk/api/ZendeskModel$1;->this$0:Lcom/zendesk/api/ZendeskModel;

    iput-object p2, p0, Lcom/zendesk/api/ZendeskModel$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel$1;->val$handler:Lcom/zendesk/api/model/ResponseHandler;

    invoke-interface {v0, p1}, Lcom/zendesk/api/model/ResponseHandler;->responseFailed(Ljava/lang/Throwable;)V

    .line 131
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
            "Lcom/zendesk/api/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/BaseModel;>;"
    iget-object v0, p0, Lcom/zendesk/api/ZendeskModel$1;->this$0:Lcom/zendesk/api/ZendeskModel;

    #getter for: Lcom/zendesk/api/ZendeskModel;->activityStream:Lcom/zendesk/api/model/ActivityStream;
    invoke-static {v0}, Lcom/zendesk/api/ZendeskModel;->access$100(Lcom/zendesk/api/ZendeskModel;)Lcom/zendesk/api/model/ActivityStream;

    move-result-object v0

    new-instance v1, Lcom/zendesk/api/ZendeskModel$1$1;

    invoke-direct {v1, p0}, Lcom/zendesk/api/ZendeskModel$1$1;-><init>(Lcom/zendesk/api/ZendeskModel$1;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ActivityStream;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 126
    return-void
.end method
