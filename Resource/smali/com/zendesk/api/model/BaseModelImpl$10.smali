.class Lcom/zendesk/api/model/BaseModelImpl$10;
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
        "Lcom/zendesk/api/model/macros/Macros;",
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
    .line 513
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl$10;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$10;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/model/macros/Macros;

    invoke-virtual {v0, v1, p1}, Lcom/zendesk/api/model/BaseModelImpl;->loginFailed(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 524
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
            "Lcom/zendesk/api/model/macros/Macros;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/macros/Macros;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$10;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    const-class v1, Lcom/zendesk/api/model/macros/Macros;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/BaseModelImpl;->unlistRequest(Ljava/lang/Class;)V

    .line 518
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$10;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    invoke-virtual {v0}, Lcom/zendesk/api/model/BaseModelImpl;->checkForLoginCompletion()V

    .line 519
    return-void
.end method
