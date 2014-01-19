.class public Lcom/zendesk/android/web/WebViewActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "WebViewActivity.java"


# instance fields
.field private pageTitle:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/web/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zendesk/android/web/WebViewActivity;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zendesk/android/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/zendesk/android/web/WebViewActivity;->pageTitle:Ljava/lang/String;

    return-object p1
.end method

.method private getFinalURL()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 72
    invoke-virtual {p0}, Lcom/zendesk/android/web/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 73
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, url:Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    const-string v4, "webViewHttps://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "webViewHttps://"

    const-string v5, "https://"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 79
    .restart local v2       #url:Ljava/lang/String;
    :cond_1
    const-string v4, "webViewHttp://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "webViewHttp://"

    const-string v5, "http://"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 83
    :cond_2
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, uriParts:[Ljava/lang/String;
    array-length v4, v1

    if-lt v4, v5, :cond_0

    .line 86
    aget-object v3, v1, v5

    .line 88
    .local v3, urlId:Ljava/lang/String;
    const-string v4, "tandc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    sget v4, Lcom/zendesk/android/R$string;->url_terms:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/web/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 90
    :cond_3
    const-string v4, "privacy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    sget v4, Lcom/zendesk/android/R$string;->url_privacy:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/web/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 92
    :cond_4
    const-string v4, "forgotaccount"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    sget v4, Lcom/zendesk/android/R$string;->url_forgot_details:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/web/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 100
    .end local v1           #uriParts:[Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #urlId:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/zendesk/android/web/WebViewActivity;->requestWindowFeature(I)Z

    .line 29
    sget v1, Lcom/zendesk/android/R$layout;->activity_webview:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/web/WebViewActivity;->setContentView(I)V

    .line 31
    sget v1, Lcom/zendesk/android/R$id;->webview_web_view:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/zendesk/android/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    .line 32
    iget-object v1, p0, Lcom/zendesk/android/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    move-object v0, p0

    .line 36
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/zendesk/android/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/zendesk/android/web/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/web/WebViewActivity$1;-><init>(Lcom/zendesk/android/web/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object v1, p0, Lcom/zendesk/android/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/zendesk/android/web/WebViewActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/android/web/WebViewActivity$2;-><init>(Lcom/zendesk/android/web/WebViewActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 57
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zendesk/android/web/WebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/zendesk/android/web/WebViewActivity;->getFinalURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 115
    sget v1, Lcom/zendesk/android/R$id;->webview_web_view:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 116
    .local v0, wv:Landroid/webkit/WebView;
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onDestroy()V

    .line 117
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 118
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    sget v1, Lcom/zendesk/android/R$id;->webview_web_view:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/web/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 106
    .local v0, wv:Landroid/webkit/WebView;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 108
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 122
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/web/WebViewActivity;->finish()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
