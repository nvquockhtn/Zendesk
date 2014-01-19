.class public Lcom/zendesk/android/ZendeskAndroidActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "ZendeskAndroidActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# instance fields
.field noConnectionDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method private startDashBoard()V
    .locals 7

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 81
    .local v1, ticketId:J
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ZendeskAndroidActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->finish()V

    .line 85
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    sget v1, Lcom/zendesk/android/R$layout;->activity_main:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ZendeskAndroidActivity;->setContentView(I)V

    .line 57
    sget v1, Lcom/zendesk/android/R$id;->tiled_image:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ZendeskAndroidActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, activityView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 61
    :cond_0
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->showLogin()V

    .line 75
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->startDashBoard()V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ZendeskAndroidActivity;->createIU(Landroid/os/Bundle;)V

    .line 27
    iget-object v2, p0, Lcom/zendesk/android/ZendeskAndroidActivity;->loginSync:Ljava/lang/Object;

    monitor-enter v2

    .line 29
    :try_start_0
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v1

    if-nez v1, :cond_1

    .line 31
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 33
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->hasLoginDetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lcom/zendesk/android/ZendeskAndroidActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-boolean v1, Lcom/zendesk/android/ZendeskAndroidActivity;->loggingIn:Z

    if-nez v1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->startLogin()V

    .line 39
    monitor-exit v2

    .line 51
    .end local v0           #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :goto_0
    return-void

    .line 43
    .restart local v0       #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->showLogin()V

    .line 44
    monitor-exit v2

    goto :goto_0

    .line 50
    .end local v0           #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/zendesk/android/ZendeskAndroidActivity;->loginSuccess()V

    .line 48
    monitor-exit v2

    goto :goto_0

    .line 50
    .restart local v0       #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
