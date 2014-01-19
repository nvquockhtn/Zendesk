.class Lcom/zendesk/api/model/BaseModelImpl$6;
.super Ljava/lang/Object;
.source "BaseModelImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/BaseModelImpl;->login(Lcom/zendesk/api/model/ResponseHandler;Z)V
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
        "Lcom/zendesk/api/model/account/TicketFields;",
        ">;"
    }
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
    .line 444
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iput-boolean p2, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->val$minimal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/model/account/TicketFields;

    invoke-virtual {v0, v1, p1}, Lcom/zendesk/api/model/BaseModelImpl;->loginFailed(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 459
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
            "Lcom/zendesk/api/model/account/TicketFields;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/account/TicketFields;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/model/account/TicketFields;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/BaseModelImpl;->unlistRequest(Ljava/lang/Class;)V

    .line 449
    iget-boolean v0, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->val$minimal:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    invoke-virtual {v0}, Lcom/zendesk/api/model/BaseModelImpl;->checkForLoginCompletion()V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$6;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    #calls: Lcom/zendesk/api/model/BaseModelImpl;->continueLogin()V
    invoke-static {v0}, Lcom/zendesk/api/model/BaseModelImpl;->access$500(Lcom/zendesk/api/model/BaseModelImpl;)V

    goto :goto_0
.end method
