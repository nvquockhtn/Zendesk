.class Lcom/zendesk/android/dashboard/DashboardActivity$8;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/dashboard/DashboardActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
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
    .line 540
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$8;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 550
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$8;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->viewsMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$800(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 551
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$8;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->settingsMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$900(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 552
    return v1
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$8;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->viewsMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$800(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 544
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$8;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->settingsMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$900(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 545
    const/4 v0, 0x1

    return v0
.end method
