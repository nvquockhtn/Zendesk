.class public Lcom/zendesk/android/ticket/editors/CreateUserActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "CreateUserActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# instance fields
.field private email:Landroid/widget/EditText;

.field private name:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 41
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, nameString:Ljava/lang/String;
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, emailString:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 45
    :cond_0
    sget v4, Lcom/zendesk/android/R$string;->user_name_required_title:I

    sget v5, Lcom/zendesk/android/R$string;->user_name_required:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v4, v5, v6}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 47
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v0, v4, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :goto_0
    return-void

    .line 50
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 52
    :cond_2
    sget v4, Lcom/zendesk/android/R$string;->email_required_title:I

    sget v5, Lcom/zendesk/android/R$string;->email_required:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v4, v5, v6}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 54
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v0, v4, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v2, i:Landroid/content/Intent;
    const-string v4, "userName"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v4, "userEmail"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4, v2}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->finish()V

    goto :goto_0
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    sget v0, Lcom/zendesk/android/R$layout;->activity_create_user:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->setContentView(I)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->displayBackUp(Z)V

    .line 25
    sget v0, Lcom/zendesk/android/R$string;->user_profile_create_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->setTitle(I)V

    .line 26
    sget v0, Lcom/zendesk/android/R$id;->create_user_name:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->name:Landroid/widget/EditText;

    .line 27
    sget v0, Lcom/zendesk/android/R$id;->create_user_email:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->email:Landroid/widget/EditText;

    .line 28
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 77
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/CreateUserActivity;->finish()V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
