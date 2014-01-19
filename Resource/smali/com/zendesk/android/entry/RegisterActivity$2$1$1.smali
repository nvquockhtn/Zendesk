.class Lcom/zendesk/android/entry/RegisterActivity$2$1$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/RegisterActivity$2$1;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/RegisterActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 203
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/zendesk/android/entry/RegisterActivity;->setResult(I)V

    .line 204
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    #getter for: Lcom/zendesk/android/entry/RegisterActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/zendesk/android/entry/RegisterActivity;->access$000(Lcom/zendesk/android/entry/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 205
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->val$config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    invoke-virtual {v3}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isFirstLoad()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    const-class v4, Lcom/zendesk/android/entry/OnboardingActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 208
    .local v1, ticketId:J
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v3, v0}, Lcom/zendesk/android/entry/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    :goto_0
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/RegisterActivity;->finish()V

    .line 217
    return-void

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #ticketId:J
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    const-class v4, Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/entry/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 213
    .restart local v1       #ticketId:J
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$1;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v3, v3, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v3, v0}, Lcom/zendesk/android/entry/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
