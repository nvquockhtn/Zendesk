.class public Lcom/zendesk/android/settings/SettingsActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private notificationsButton:Lcom/zendesk/android/ui/ToggleButton;

.field private soundButton:Lcom/zendesk/android/ui/ToggleButton;

.field private vibrateButton:Lcom/zendesk/android/ui/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/settings/SettingsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private setToggles(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity;->notificationsButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/ToggleButton;->setOn(Z)V

    .line 156
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity;->soundButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/ToggleButton;->setOn(Z)V

    .line 157
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity;->vibrateButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {p1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isVibrateEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/ToggleButton;->setOn(Z)V

    .line 158
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    sget v1, Lcom/zendesk/android/R$layout;->activity_settings:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->setContentView(I)V

    .line 40
    sget v1, Lcom/zendesk/android/R$string;->settings_title:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->setTitle(I)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->displayBackUp(Z)V

    .line 43
    sget v1, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 46
    sget v1, Lcom/zendesk/android/R$id;->settings_notifications_button:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/ToggleButton;

    iput-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->notificationsButton:Lcom/zendesk/android/ui/ToggleButton;

    .line 47
    sget v1, Lcom/zendesk/android/R$id;->settings_sound_button:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/ToggleButton;

    iput-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->soundButton:Lcom/zendesk/android/ui/ToggleButton;

    .line 48
    sget v1, Lcom/zendesk/android/R$id;->settings_vibrate_button:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/ToggleButton;

    iput-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->vibrateButton:Lcom/zendesk/android/ui/ToggleButton;

    .line 50
    iget-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->notificationsButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/ToggleButton;->init()V

    .line 51
    iget-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->soundButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/ToggleButton;->init()V

    .line 52
    iget-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity;->vibrateButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/ToggleButton;->init()V

    .line 53
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->setToggles(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V

    .line 55
    sget v1, Lcom/zendesk/android/R$id;->settings_version:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, version:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/android/Zendesk;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public logout(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 162
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, pushId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    .line 166
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zendesk/api/ZendeskModel;->unregisterForNotifications(Ljava/lang/String;)V

    .line 169
    .end local v1           #pushId:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->logout()V

    .line 170
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->clear()V

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zendesk/android/entry/EntryActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/zendesk/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/zendesk/android/settings/SettingsActivity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->finish()V

    .line 177
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->finish()V

    .line 139
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 193
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public rate(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.zendesk.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public refresh(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initModel()V

    .line 85
    new-instance v0, Lcom/zendesk/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/settings/SettingsActivity$1;-><init>(Lcom/zendesk/android/settings/SettingsActivity;)V

    .line 107
    return-void
.end method

.method public toggle(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 122
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    iget-object v3, p0, Lcom/zendesk/android/settings/SettingsActivity;->notificationsButton:Lcom/zendesk/android/ui/ToggleButton;

    if-ne p1, v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/zendesk/android/settings/SettingsActivity;->notificationsButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {v3}, Lcom/zendesk/android/ui/ToggleButton;->isOn()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setNotificationsEnabled(Z)V

    .line 129
    :goto_1
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/zendesk/android/settings/SettingsActivity;->setToggles(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V

    .line 131
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/android/Zendesk;->updatePushStatus(Landroid/content/Context;)V

    .line 132
    return-void

    :cond_0
    move v1, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/zendesk/android/settings/SettingsActivity;->soundButton:Lcom/zendesk/android/ui/ToggleButton;

    if-ne p1, v3, :cond_3

    .line 125
    iget-object v3, p0, Lcom/zendesk/android/settings/SettingsActivity;->soundButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {v3}, Lcom/zendesk/android/ui/ToggleButton;->isOn()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setSoundEnabled(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/zendesk/android/settings/SettingsActivity;->vibrateButton:Lcom/zendesk/android/ui/ToggleButton;

    invoke-virtual {v3}, Lcom/zendesk/android/ui/ToggleButton;->isOn()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setVibratesEnabled(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public toggleNotifications(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 142
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 143
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setNotificationsEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 150
    :goto_0
    invoke-direct {p0, v0}, Lcom/zendesk/android/settings/SettingsActivity;->setToggles(Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V

    .line 151
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setNotificationsEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/zendesk/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    goto :goto_0
.end method
