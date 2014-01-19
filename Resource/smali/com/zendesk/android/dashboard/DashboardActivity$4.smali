.class Lcom/zendesk/android/dashboard/DashboardActivity$4;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/dashboard/DashboardActivity;
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
    .line 337
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$4;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$4;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {v0, p1}, Lcom/zendesk/android/dashboard/DashboardActivity;->configureViews(Landroid/view/View;)V

    .line 340
    return-void
.end method
