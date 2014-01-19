.class public Lcom/zendesk/android/entry/RegisterActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterActivity"


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private company:Landroid/widget/EditText;

.field private confirm:Landroid/widget/EditText;

.field private dialog:Landroid/app/ProgressDialog;

.field private email:Landroid/widget/EditText;

.field private employees:Landroid/widget/Spinner;

.field private name:Landroid/widget/EditText;

.field private password:Landroid/widget/EditText;

.field private phone:Landroid/widget/EditText;

.field private subdomain:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/entry/RegisterActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zendesk/android/entry/RegisterActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/entry/RegisterActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/zendesk/android/entry/RegisterActivity;->loginToNewAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/zendesk/android/entry/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method private loginToNewAccount()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 185
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setLogin(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setPassword(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->subdomain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setSubdomain(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/zendesk/android/entry/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lcom/zendesk/android/Zendesk;->initModel()V

    .line 192
    new-instance v1, Lcom/zendesk/android/entry/RegisterActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/zendesk/android/entry/RegisterActivity$2;-><init>(Lcom/zendesk/android/entry/RegisterActivity;Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V

    invoke-virtual {v1}, Lcom/zendesk/android/entry/RegisterActivity$2;->start()V

    .line 235
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 239
    sget v1, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {p1, v1}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(Ljava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 240
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/entry/RegisterActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 241
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 56
    sget v3, Lcom/zendesk/android/R$layout;->activity_register:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->setContentView(I)V

    .line 58
    sget v3, Lcom/zendesk/android/R$id;->registration_view_container:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 59
    .local v0, activityView:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 61
    sget v3, Lcom/zendesk/android/R$id;->registration_name_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->name:Landroid/widget/EditText;

    .line 62
    sget v3, Lcom/zendesk/android/R$id;->registration_email_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->email:Landroid/widget/EditText;

    .line 63
    sget v3, Lcom/zendesk/android/R$id;->registration_phone_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->phone:Landroid/widget/EditText;

    .line 64
    sget v3, Lcom/zendesk/android/R$id;->registration_company_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->company:Landroid/widget/EditText;

    .line 65
    sget v3, Lcom/zendesk/android/R$id;->registration_sitename_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->subdomain:Landroid/widget/EditText;

    .line 66
    sget v3, Lcom/zendesk/android/R$id;->registration_password_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->password:Landroid/widget/EditText;

    .line 67
    sget v3, Lcom/zendesk/android/R$id;->registration_confirm_textbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->confirm:Landroid/widget/EditText;

    .line 68
    sget v3, Lcom/zendesk/android/R$id;->registration_terms_and_privacy_checkbox:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->checkBox:Landroid/widget/CheckBox;

    .line 69
    sget v3, Lcom/zendesk/android/R$id;->registration_employees_spinner:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->employees:Landroid/widget/Spinner;

    .line 71
    invoke-virtual {p0}, Lcom/zendesk/android/entry/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/zendesk/android/R$array;->employees:I

    sget v5, Lcom/zendesk/android/R$layout;->component_spinner_text:I

    invoke-static {v3, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 73
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->employees:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    sget v3, Lcom/zendesk/android/R$id;->registration_label:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, t:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public loggingIn()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public register(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v3, 0x5

    const/4 v11, 0x1

    .line 96
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v11, :cond_0

    .line 97
    sget v1, Lcom/zendesk/android/R$string;->registration_name_req:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, s:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v1, "@"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 103
    :cond_1
    sget v1, Lcom/zendesk/android/R$string;->registration_email_req:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->subdomain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v11, :cond_3

    .line 108
    sget v1, Lcom/zendesk/android/R$string;->registration_site_req:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->phone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 113
    sget v1, Lcom/zendesk/android/R$string;->registration_phone_req:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 118
    sget v1, Lcom/zendesk/android/R$string;->registration_agree_req:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity;->confirm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 123
    sget v1, Lcom/zendesk/android/R$string;->registration_password_req:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_6
    const-string v7, "1-9"

    .line 128
    .local v7, emp:Ljava/lang/String;
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->employees:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 129
    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->employees:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 132
    :cond_7
    const-string v8, "Zendesk for Android"

    .line 137
    .local v8, source:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLAH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/zendesk/api/requester/RegistrationRequester;

    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/entry/RegisterActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/entry/RegisterActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/entry/RegisterActivity;->company:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/android/entry/RegisterActivity;->subdomain:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zendesk/android/entry/RegisterActivity;->phone:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/zendesk/api/requester/RegistrationRequester;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, req:Lcom/zendesk/api/requester/RegistrationRequester;
    const-string v1, ""

    sget v2, Lcom/zendesk/android/R$string;->loading_msg:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity;->dialog:Landroid/app/ProgressDialog;

    .line 152
    new-instance v1, Lcom/zendesk/android/entry/RegisterActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/zendesk/android/entry/RegisterActivity$1;-><init>(Lcom/zendesk/android/entry/RegisterActivity;Lcom/zendesk/api/requester/RegistrationRequester;)V

    goto/16 :goto_0
.end method
