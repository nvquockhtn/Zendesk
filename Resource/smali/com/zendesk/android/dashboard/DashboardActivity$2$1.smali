.class Lcom/zendesk/android/dashboard/DashboardActivity$2$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity$2;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/dashboard/DashboardActivity$2;


# direct methods
.method constructor <init>(Lcom/zendesk/android/dashboard/DashboardActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$2$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$2$1;->this$1:Lcom/zendesk/android/dashboard/DashboardActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/dashboard/DashboardActivity$2;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #calls: Lcom/zendesk/android/dashboard/DashboardActivity;->updateViewsList()V
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$200(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    .line 238
    return-void
.end method
