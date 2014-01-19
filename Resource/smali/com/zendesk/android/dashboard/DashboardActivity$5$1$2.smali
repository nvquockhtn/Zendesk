.class Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/zendesk/android/dashboard/DashboardActivity$5$1;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iput-object p2, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 446
    const-string v0, "DashboardActivity"

    const-string v1, "Error updating stream"

    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;->val$e:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsLoadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$300(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1$2;->this$2:Lcom/zendesk/android/dashboard/DashboardActivity$5$1;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$5;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$400(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 449
    return-void
.end method
