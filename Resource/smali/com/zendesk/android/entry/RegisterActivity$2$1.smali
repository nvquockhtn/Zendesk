.class Lcom/zendesk/android/entry/RegisterActivity$2$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/RegisterActivity$2;->run()V
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
.field final synthetic this$1:Lcom/zendesk/android/entry/RegisterActivity$2;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/RegisterActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 224
    const-string v0, "RegisterActivity"

    const-string v1, "Login error."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    iget-object v0, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    new-instance v1, Lcom/zendesk/android/entry/RegisterActivity$2$1$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/entry/RegisterActivity$2$1$2;-><init>(Lcom/zendesk/android/entry/RegisterActivity$2$1;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 231
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
    .line 201
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/BaseModel;>;"
    iget-object v0, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    new-instance v1, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;-><init>(Lcom/zendesk/android/entry/RegisterActivity$2$1;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method
