.class Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;


# direct methods
.method constructor <init>(Lcom/zendesk/android/dashboard/DashboardActivity$5$1;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$500(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/zendesk/android/dashboard/NotificationsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    new-instance v1, Lcom/zendesk/android/dashboard/NotificationsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v2, v2, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v2, v2, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {v1, v2}, Lcom/zendesk/android/dashboard/NotificationsAdapter;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;
    invoke-static {v0, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$502(Lcom/zendesk/android/dashboard/DashboardActivity;Lcom/zendesk/android/dashboard/NotificationsAdapter;)Lcom/zendesk/android/dashboard/NotificationsAdapter;

    .line 430
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$400(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v1, v1, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v1, v1, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;
    invoke-static {v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$500(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/zendesk/android/dashboard/NotificationsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$500(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/zendesk/android/dashboard/NotificationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->setActivityGroups()V

    .line 433
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$500(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/zendesk/android/dashboard/NotificationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->notifyDataSetChanged()V

    .line 434
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsLoadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$300(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$1;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$400(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 437
    return-void
.end method
