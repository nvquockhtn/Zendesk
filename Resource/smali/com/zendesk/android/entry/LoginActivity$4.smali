.class Lcom/zendesk/android/entry/LoginActivity$4;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/LoginActivity;->login(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/entry/LoginActivity;

.field final synthetic val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/LoginActivity;Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    iput-object p2, p0, Lcom/zendesk/android/entry/LoginActivity$4;->val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 181
    const-string v1, "LoginActivity"

    const-string v2, "Login failed."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    #getter for: Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zendesk/android/entry/LoginActivity;->access$100(Lcom/zendesk/android/entry/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 184
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    sget v2, Lcom/zendesk/android/R$string;->login_failed_ssl_msg:I

    invoke-virtual {v1, v2}, Lcom/zendesk/android/entry/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(Ljava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 186
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/entry/LoginActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 201
    :goto_0
    return-void

    .line 187
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "certificate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handshake"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    sget v2, Lcom/zendesk/android/R$string;->login_failed_possible_ssl_msg:I

    invoke-virtual {v1, v2}, Lcom/zendesk/android/entry/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(Ljava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 192
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/entry/LoginActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0

    .line 194
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_4

    .line 195
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    sget v3, Lcom/zendesk/android/R$string;->connection_error_login_msg:I

    invoke-virtual {v2, v3}, Lcom/zendesk/android/entry/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 196
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/entry/LoginActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0

    .line 198
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_4
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    sget v2, Lcom/zendesk/android/R$string;->login_failed_msg:I

    invoke-virtual {v1, v2}, Lcom/zendesk/android/entry/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(Ljava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 199
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/entry/LoginActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0
.end method

.method protected responseSuccess()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 149
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    invoke-virtual {v3}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->refresh()V

    .line 150
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initCrittercismUser()V

    .line 151
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    #getter for: Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/zendesk/android/entry/LoginActivity;->access$100(Lcom/zendesk/android/entry/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    #getter for: Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/zendesk/android/entry/LoginActivity;->access$100(Lcom/zendesk/android/entry/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    #getter for: Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/zendesk/android/entry/LoginActivity;->access$100(Lcom/zendesk/android/entry/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/zendesk/android/entry/LoginActivity;->setResult(I)V

    .line 157
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    invoke-virtual {v3}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isFirstLoad()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    const-class v4, Lcom/zendesk/android/entry/OnboardingActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 160
    .local v1, ticketId:J
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v3, v0}, Lcom/zendesk/android/entry/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    :goto_0
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    #calls: Lcom/zendesk/android/entry/LoginActivity;->cleanup()V
    invoke-static {v3}, Lcom/zendesk/android/entry/LoginActivity;->access$200(Lcom/zendesk/android/entry/LoginActivity;)V

    .line 170
    const-string v3, "LoginActivity"

    const-string v4, "Invoking LoginActivity.finish()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/LoginActivity;->finish()V

    .line 172
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/LoginActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    new-instance v3, Lcom/zendesk/android/entry/LoginActivity$4$1;

    invoke-direct {v3, p0}, Lcom/zendesk/android/entry/LoginActivity$4$1;-><init>(Lcom/zendesk/android/entry/LoginActivity$4;)V

    invoke-virtual {v3}, Lcom/zendesk/android/entry/LoginActivity$4$1;->start()V

    .line 177
    :cond_1
    return-void

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #ticketId:J
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    const-class v4, Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 165
    .restart local v1       #ticketId:J
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity$4;->this$0:Lcom/zendesk/android/entry/LoginActivity;

    invoke-virtual {v3, v0}, Lcom/zendesk/android/entry/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initModel()V

    .line 206
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->login()V

    .line 207
    return-void
.end method
