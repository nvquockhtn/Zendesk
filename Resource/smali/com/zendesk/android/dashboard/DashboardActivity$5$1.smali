.class Lcom/zendesk/android/dashboard/DashboardActivity$5$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity$5;->run()V
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
.field final synthetic this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;


# direct methods
.method constructor <init>(Lcom/zendesk/android/dashboard/DashboardActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    new-instance v1, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity$5$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 451
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
    .line 426
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/ActivityStream;>;"
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    new-instance v1, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity$5$1;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method
