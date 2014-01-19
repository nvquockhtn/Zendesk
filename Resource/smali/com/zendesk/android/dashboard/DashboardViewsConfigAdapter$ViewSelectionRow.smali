.class Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;
.super Ljava/lang/Object;
.source "DashboardViewsConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewSelectionRow"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

.field viewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->this$0:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget v0, Lcom/zendesk/android/R$id;->dashboard_views_config_row_view_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->viewTitle:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/zendesk/android/R$id;->dashboard_views_config_row_checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->checkbox:Landroid/widget/CheckBox;

    .line 76
    return-void
.end method
