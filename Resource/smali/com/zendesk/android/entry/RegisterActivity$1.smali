.class Lcom/zendesk/android/entry/RegisterActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/RegisterActivity;->register(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/entry/RegisterActivity;

.field final synthetic val$req:Lcom/zendesk/api/requester/RegistrationRequester;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/RegisterActivity;Lcom/zendesk/api/requester/RegistrationRequester;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    iput-object p2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->val$req:Lcom/zendesk/api/requester/RegistrationRequester;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    #getter for: Lcom/zendesk/android/entry/RegisterActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zendesk/android/entry/RegisterActivity;->access$000(Lcom/zendesk/android/entry/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 169
    const-string v2, "RegisterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->val$req:Lcom/zendesk/api/requester/RegistrationRequester;

    invoke-virtual {v2}, Lcom/zendesk/api/requester/RegistrationRequester;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/http/RequestException;->parseAPIError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, error:Ljava/lang/String;
    sget v2, Lcom/zendesk/android/R$string;->registration_error:I

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v2, v1, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 173
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v2, v0}, Lcom/zendesk/android/entry/RegisterActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 174
    return-void
.end method

.method protected responseSuccess()V
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->val$req:Lcom/zendesk/api/requester/RegistrationRequester;

    invoke-virtual {v2}, Lcom/zendesk/api/requester/RegistrationRequester;->getResponseString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{\"errors\":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    #getter for: Lcom/zendesk/android/entry/RegisterActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zendesk/android/entry/RegisterActivity;->access$000(Lcom/zendesk/android/entry/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->val$req:Lcom/zendesk/api/requester/RegistrationRequester;

    invoke-virtual {v2}, Lcom/zendesk/api/requester/RegistrationRequester;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/http/RequestException;->parseAPIError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, error:Ljava/lang/String;
    sget v2, Lcom/zendesk/android/R$string;->registration_error:I

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v2, v1, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 160
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    invoke-virtual {v2, v0}, Lcom/zendesk/android/entry/RegisterActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 164
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    .end local v1           #error:Ljava/lang/String;
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    #calls: Lcom/zendesk/android/entry/RegisterActivity;->loginToNewAccount()V
    invoke-static {v2}, Lcom/zendesk/android/entry/RegisterActivity;->access$100(Lcom/zendesk/android/entry/RegisterActivity;)V

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
    .line 178
    iget-object v0, p0, Lcom/zendesk/android/entry/RegisterActivity$1;->val$req:Lcom/zendesk/api/requester/RegistrationRequester;

    invoke-virtual {v0}, Lcom/zendesk/api/requester/RegistrationRequester;->execute()V

    .line 179
    return-void
.end method
