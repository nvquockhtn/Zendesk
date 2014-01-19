.class public abstract Lcom/zendesk/android/ui/ZDFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ZDFragmentActivity.java"


# static fields
.field private static final SUPER_TAG:Ljava/lang/String; = "ZDFragmentActivity"

.field protected static loggingIn:Z

.field protected static final resumingFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ui/ZDFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected static final waitingFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ui/ZDFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected static final waitingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected destroyed:Z

.field protected dialog:Lcom/zendesk/android/ui/ZDAlertDialog;

.field protected final loginSync:Ljava/lang/Object;

.field noConnectionDialog:Z

.field protected paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->resumingFragments:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingTasks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->paused:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSync:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract createIU(Landroid/os/Bundle;)V
.end method

.method public displayBackUp(Z)V
    .locals 1
    .parameter "showBackUp"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 285
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public doNegativeClick()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->noConnectionDialog:Z

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->setResult(I)V

    .line 207
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->finish()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->showLogin()V

    goto :goto_0
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn()Z

    .line 202
    return-void
.end method

.method public abstract isLoggingIn()V
.end method

.method public loggingIn()Z
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSync:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v1

    if-nez v1, :cond_2

    .line 101
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 103
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->hasLoginDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-boolean v1, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn:Z

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->startLogin()V

    .line 111
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    .line 117
    .end local v0           #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :goto_0
    return v1

    .line 113
    .restart local v0       #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :cond_1
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->finish()V

    .line 116
    .end local v0           #config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    :cond_2
    monitor-exit v2

    .line 117
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract loginError()V
.end method

.method public abstract loginSuccess()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 50
    sget v1, Lcom/zendesk/android/R$drawable;->ic_menu_dashboard:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->createIU(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->destroyed:Z

    .line 265
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 266
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->paused:Z

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->paused:Z

    .line 65
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->dialog:Lcom/zendesk/android/ui/ZDAlertDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->dialog:Lcom/zendesk/android/ui/ZDAlertDialog;

    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/zendesk/android/ui/ZDAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 77
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSuccess()V

    .line 80
    :cond_0
    return-void
.end method

.method protected run(Ljava/lang/Thread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSync:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-boolean v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :goto_0
    monitor-exit v1

    .line 250
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisplayIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 299
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 292
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 278
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 271
    .local v0, abs:Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public showLogin()V
    .locals 7

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/zendesk/android/entry/EntryActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 256
    .local v1, ticketId:J
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->finish()V

    .line 260
    return-void
.end method

.method public showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->paused:Z

    if-eqz v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDFragmentActivity;->dialog:Lcom/zendesk/android/ui/ZDAlertDialog;

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Lcom/zendesk/android/ui/ZDAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startLogin()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn:Z

    .line 123
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initModel()V

    .line 125
    new-instance v0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ui/ZDFragmentActivity$1;-><init>(Lcom/zendesk/android/ui/ZDFragmentActivity;)V

    .line 197
    return-void
.end method
