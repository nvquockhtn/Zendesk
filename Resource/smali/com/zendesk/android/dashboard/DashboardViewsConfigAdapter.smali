.class public Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "DashboardViewsConfigAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;
    }
.end annotation


# instance fields
.field private editedConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->editedConfig:Ljava/util/List;

    .line 28
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ViewsWithCounts;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->views:Ljava/util/List;

    .line 29
    return-void
.end method

.method private isSelected(Lcom/zendesk/api/model/views/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->editedConfig:Ljava/util/List;

    invoke-virtual {p1}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEditedConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->editedConfig:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->views:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/views/View;

    .line 52
    .local v1, v:Lcom/zendesk/api/model/views/View;
    if-nez p2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->dashboard_views_config_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    :cond_0
    new-instance v0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;

    invoke-direct {v0, p0, p2, p3}, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;-><init>(Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 56
    .local v0, row:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;
    iget-object v2, v0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, v0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->checkbox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v2, v0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->isSelected(Lcom/zendesk/api/model/views/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    iget-object v2, v0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v2, v0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter$ViewSelectionRow;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-object p2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/views/View;

    .line 91
    .local v0, v:Lcom/zendesk/api/model/views/View;
    if-nez p2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->editedConfig:Ljava/util/List;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->editedConfig:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->editedConfig:Ljava/util/List;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 82
    return-void
.end method
