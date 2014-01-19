.class Lcom/zendesk/android/dashboard/DashboardActivity$3;
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
    .line 327
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$3;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/views/View;

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 331
    .local v1, viewId:Ljava/lang/Long;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity$3;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    const-class v3, Lcom/zendesk/android/ticketlist/TicketListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "viewId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity$3;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {v2, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method
