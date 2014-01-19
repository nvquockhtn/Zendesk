.class Lcom/zendesk/android/dashboard/DashboardActivity$6;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 512
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$6;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 515
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$6;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$600(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 517
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity$6;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zendesk/android/dashboard/DashboardActivity;->performSearch(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$700(Lcom/zendesk/android/dashboard/DashboardActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
