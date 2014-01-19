.class Lcom/zendesk/api/model/BaseModelImpl$12;
.super Ljava/lang/Object;
.source "BaseModelImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/BaseModelImpl;->continueLogin()V
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
        "Lcom/zendesk/api/model/users/Organizations;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/BaseModelImpl;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/BaseModelImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl$12;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$12;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    new-instance v1, Lcom/zendesk/api/model/users/Organizations;

    invoke-direct {v1}, Lcom/zendesk/api/model/users/Organizations;-><init>()V

    iput-object v1, v0, Lcom/zendesk/api/model/BaseModelImpl;->organisations:Lcom/zendesk/api/model/users/Organizations;

    .line 555
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$12;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/model/users/Organizations;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/BaseModelImpl;->unlistRequest(Ljava/lang/Class;)V

    .line 557
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
            "Lcom/zendesk/api/model/users/Organizations;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/users/Organizations;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$12;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/model/users/Organizations;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/BaseModelImpl;->unlistRequest(Ljava/lang/Class;)V

    .line 549
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$12;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    invoke-virtual {v0}, Lcom/zendesk/api/model/BaseModelImpl;->checkForLoginCompletion()V

    .line 550
    return-void
.end method
