.class public Lcom/zendesk/android/entry/LoginActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private email:Landroid/widget/EditText;

.field private logo:Landroid/widget/ImageView;

.field private password:Landroid/widget/EditText;

.field private url:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/entry/LoginActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->logo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/entry/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/entry/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zendesk/android/entry/LoginActivity;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    .line 221
    iput-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->logo:Landroid/widget/ImageView;

    .line 222
    iput-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    .line 223
    iput-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    .line 224
    iput-object v0, p0, Lcom/zendesk/android/entry/LoginActivity;->password:Landroid/widget/EditText;

    .line 225
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 47
    sget v4, Lcom/zendesk/android/R$layout;->activity_login:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/entry/LoginActivity;->setContentView(I)V

    .line 49
    sget v4, Lcom/zendesk/android/R$id;->tiled_image:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/entry/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .local v0, activityView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 52
    sget v4, Lcom/zendesk/android/R$id;->login_email_textbox:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/entry/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    .line 53
    sget v4, Lcom/zendesk/android/R$id;->login_password_textbox:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/entry/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->password:Landroid/widget/EditText;

    .line 54
    sget v4, Lcom/zendesk/android/R$id;->login_url_textbox:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/entry/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    .line 55
    sget v4, Lcom/zendesk/android/R$id;->login_zendesk_logo:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/entry/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->logo:Landroid/widget/ImageView;

    .line 57
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v1

    .line 58
    .local v1, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getLogin()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getLogin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getSubdomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getSubdomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    new-instance v2, Lcom/zendesk/android/entry/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/entry/LoginActivity$1;-><init>(Lcom/zendesk/android/entry/LoginActivity;)V

    .line 72
    .local v2, hideLogoListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v3, Lcom/zendesk/android/entry/LoginActivity$2;

    invoke-direct {v3, p0}, Lcom/zendesk/android/entry/LoginActivity$2;-><init>(Lcom/zendesk/android/entry/LoginActivity;)V

    .line 81
    .local v3, onTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    iget-object v4, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    new-instance v5, Lcom/zendesk/android/entry/LoginActivity$3;

    invoke-direct {v5, p0}, Lcom/zendesk/android/entry/LoginActivity$3;-><init>(Lcom/zendesk/android/entry/LoginActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 101
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public loggingIn()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public login(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    :cond_0
    sget v2, Lcom/zendesk/android/R$string;->login_fields_required_title:I

    sget v3, Lcom/zendesk/android/R$string;->login_fields_required:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v1

    .line 123
    .local v1, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/LoginActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 209
    .end local v1           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v2, ""

    sget v3, Lcom/zendesk/android/R$string;->loading_msg:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/entry/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->dialog:Landroid/app/ProgressDialog;

    .line 131
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 135
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getLogin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getSubdomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getLogin()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getSubdomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    :cond_2
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setLogin(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setPassword(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/zendesk/android/entry/LoginActivity;->url:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->setSubdomain(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/zendesk/android/entry/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->commitPreferences(Landroid/content/Context;)V

    .line 145
    new-instance v2, Lcom/zendesk/android/entry/LoginActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/android/entry/LoginActivity$4;-><init>(Lcom/zendesk/android/entry/LoginActivity;Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;)V

    goto/16 :goto_0
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "LoginActivity"

    const-string v1, "LoginActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onDestroy()V

    .line 217
    return-void
.end method
