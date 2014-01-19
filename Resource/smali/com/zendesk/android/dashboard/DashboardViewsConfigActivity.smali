.class public Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "DashboardViewsConfigActivity.java"


# instance fields
.field private adapter:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelConfig(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->finish()V

    .line 37
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v2, Lcom/zendesk/android/R$layout;->activity_dashboard_views_config:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 24
    sget v2, Lcom/zendesk/android/R$drawable;->ic_menu_dashboard:I

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 25
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 26
    sget v2, Lcom/zendesk/android/R$string;->dashboard_add_to_dashboard:I

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 29
    :cond_0
    sget v2, Lcom/zendesk/android/R$id;->dashboard_views_config_list:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 30
    .local v1, listView:Landroid/widget/ListView;
    new-instance v2, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->adapter:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

    .line 31
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->adapter:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->adapter:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 33
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->finish()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public saveConfig(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 40
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 41
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getViews()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->adapter:Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/dashboard/DashboardViewsConfigAdapter;->getEditedConfig()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;->finish()V

    .line 45
    return-void
.end method
