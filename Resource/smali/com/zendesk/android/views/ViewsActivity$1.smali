.class Lcom/zendesk/android/views/ViewsActivity$1;
.super Ljava/lang/Object;
.source "ViewsActivity.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/views/ViewsActivity;->checkCounts()V
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
        "Lcom/zendesk/api/model/views/Views;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/views/ViewsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/views/ViewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zendesk/android/views/ViewsActivity$1;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 100
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
            "Lcom/zendesk/api/model/views/Views;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, arg0:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/views/Views;>;"
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity$1;->this$0:Lcom/zendesk/android/views/ViewsActivity;

    new-instance v1, Lcom/zendesk/android/views/ViewsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/views/ViewsActivity$1$1;-><init>(Lcom/zendesk/android/views/ViewsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/views/ViewsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
