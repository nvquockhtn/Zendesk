.class Lcom/zendesk/android/ui/ZDFragmentActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ZDFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ui/ZDFragmentActivity;->startLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ui/ZDFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 10
    .parameter "t"

    .prologue
    .line 153
    iget-object v7, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    iget-object v8, v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSync:Ljava/lang/Object;

    monitor-enter v8

    .line 155
    const/4 v7, 0x0

    :try_start_0
    sput-boolean v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn:Z

    .line 156
    const-string v7, "ZDFragmentActivity"

    const-string v9, "Login failed."

    invoke-static {v7, v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v2, 0x0

    .line 160
    .local v2, frag:Lcom/zendesk/android/ui/ZDFragmentActivity;
    sget-object v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 162
    sget-object v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/ZDFragmentActivity;

    .line 163
    .local v1, f:Lcom/zendesk/android/ui/ZDFragmentActivity;
    invoke-virtual {v1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v1, Lcom/zendesk/android/ui/ZDFragmentActivity;->destroyed:Z

    if-nez v7, :cond_2

    .line 164
    move-object v2, v1

    .line 168
    .end local v1           #f:Lcom/zendesk/android/ui/ZDFragmentActivity;
    :cond_0
    sget-object v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 169
    sget-object v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingTasks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 171
    if-eqz v2, :cond_1

    .line 173
    sget v6, Lcom/zendesk/android/R$string;->login_retry:I

    .line 174
    .local v6, positiveButton:I
    sget v5, Lcom/zendesk/android/R$string;->cancel_action:I

    .line 176
    .local v5, negativeButton:I
    iget-object v7, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-static {v7}, Lcom/zendesk/android/ui/Connectvity;->connectionAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    iget-object v7, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->noConnectionDialog:Z

    .line 178
    invoke-virtual {v2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginError()V

    .line 188
    .end local v5           #negativeButton:I
    .end local v6           #positiveButton:I
    :cond_1
    :goto_1
    monitor-exit v8

    .line 189
    return-void

    .line 160
    .restart local v1       #f:Lcom/zendesk/android/ui/ZDFragmentActivity;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 181
    .end local v1           #f:Lcom/zendesk/android/ui/ZDFragmentActivity;
    .restart local v5       #negativeButton:I
    .restart local v6       #positiveButton:I
    :cond_3
    iget-object v7, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    sget v9, Lcom/zendesk/android/R$string;->connection_error_login_msg:I

    invoke-virtual {v7, v9}, Lcom/zendesk/android/ui/ZDFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/zendesk/android/ui/ZDFragmentActivity;->noConnectionDialog:Z

    .line 183
    sget v7, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-static {v7, v4, v6, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 185
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v7, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v7, v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_1

    .line 188
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    .end local v2           #frag:Lcom/zendesk/android/ui/ZDFragmentActivity;
    .end local v3           #i:I
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #negativeButton:I
    .end local v6           #positiveButton:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method protected responseSuccess()V
    .locals 5

    .prologue
    .line 130
    iget-object v3, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    iget-object v4, v3, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSync:Ljava/lang/Object;

    monitor-enter v4

    .line 132
    const/4 v3, 0x0

    :try_start_0
    sput-boolean v3, Lcom/zendesk/android/ui/ZDFragmentActivity;->loggingIn:Z

    .line 134
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initCrittercismUser()V

    .line 136
    sget-object v3, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ui/ZDFragmentActivity;

    .line 137
    .local v0, frag:Lcom/zendesk/android/ui/ZDFragmentActivity;
    invoke-virtual {v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/zendesk/android/ui/ZDFragmentActivity;->destroyed:Z

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->loginSuccess()V

    goto :goto_0

    .line 147
    .end local v0           #frag:Lcom/zendesk/android/ui/ZDFragmentActivity;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 141
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 143
    sget-object v3, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 144
    .local v2, t:Ljava/lang/Thread;
    iget-object v3, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v3, v2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 146
    .end local v2           #t:Ljava/lang/Thread;
    :cond_2
    sget-object v3, Lcom/zendesk/android/ui/ZDFragmentActivity;->waitingTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 147
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
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
    .line 193
    iget-object v0, p0, Lcom/zendesk/android/ui/ZDFragmentActivity$1;->this$0:Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->isLoggingIn()V

    .line 194
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->login()V

    .line 195
    return-void
.end method
