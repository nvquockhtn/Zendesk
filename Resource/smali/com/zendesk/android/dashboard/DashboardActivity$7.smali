.class Lcom/zendesk/android/dashboard/DashboardActivity$7;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 524
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity$7;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 527
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$7;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$600(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    .line 528
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 530
    check-cast v0, Landroid/widget/LinearLayout;

    .line 531
    .local v0, searchContainer:Landroid/widget/LinearLayout;
    sget v3, Lcom/zendesk/android/R$id;->search_edittext:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 532
    .local v1, searchString:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$7;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    #getter for: Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v3}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$600(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 534
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity$7;->this$0:Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zendesk/android/dashboard/DashboardActivity;->performSearch(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v3, v1, v4}, Lcom/zendesk/android/dashboard/DashboardActivity;->access$700(Lcom/zendesk/android/dashboard/DashboardActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 537
    .end local v0           #searchContainer:Landroid/widget/LinearLayout;
    .end local v1           #searchString:Landroid/widget/EditText;
    :cond_0
    return-void
.end method
