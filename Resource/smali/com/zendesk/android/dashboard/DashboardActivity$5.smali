.class Lcom/zendesk/android/dashboard/DashboardActivity$5;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity;->pushReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsLoadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$300(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$400(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 421
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getActivityStream()Lcom/zendesk/api/model/ActivityStream;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ActivityStream;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 453
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateBadgeValue()V

    .line 454
    return-void
.end method
