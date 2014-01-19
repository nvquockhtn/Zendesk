.class Lcom/zendesk/android/settings/SettingsActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/settings/SettingsActivity;->refresh(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zendesk/android/settings/SettingsActivity$1;->this$0:Lcom/zendesk/android/settings/SettingsActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 96
    const-string v1, "SettingsActivity"

    const-string v2, "Refresh error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    iget-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity$1;->this$0:Lcom/zendesk/android/settings/SettingsActivity;

    #getter for: Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/settings/SettingsActivity;->access$000(Lcom/zendesk/android/settings/SettingsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 99
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/settings/SettingsActivity$1;->this$0:Lcom/zendesk/android/settings/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/settings/SettingsActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 100
    return-void
.end method

.method protected responseSuccess()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->refresh()V

    .line 90
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initCrittercismUser()V

    .line 91
    iget-object v0, p0, Lcom/zendesk/android/settings/SettingsActivity$1;->this$0:Lcom/zendesk/android/settings/SettingsActivity;

    #getter for: Lcom/zendesk/android/settings/SettingsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/settings/SettingsActivity;->access$000(Lcom/zendesk/android/settings/SettingsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->login()V

    .line 105
    return-void
.end method
