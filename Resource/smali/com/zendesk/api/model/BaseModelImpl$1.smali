.class Lcom/zendesk/api/model/BaseModelImpl$1;
.super Ljava/lang/Object;
.source "BaseModelImpl.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/api/model/BaseModelImpl;->login()V
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
.field final synthetic this$0:Lcom/zendesk/api/model/BaseModelImpl;

.field final synthetic val$errors:Ljava/util/List;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/BaseModelImpl;Ljava/lang/Thread;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/zendesk/api/model/BaseModelImpl$1;->this$0:Lcom/zendesk/api/model/BaseModelImpl;

    iput-object p2, p0, Lcom/zendesk/api/model/BaseModelImpl$1;->val$thread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/zendesk/api/model/BaseModelImpl$1;->val$errors:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$1;->val$errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 339
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 1
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
    .line 332
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/BaseModel;>;"
    iget-object v0, p0, Lcom/zendesk/api/model/BaseModelImpl$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 333
    return-void
.end method
