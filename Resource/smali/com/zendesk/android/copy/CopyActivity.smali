.class public Lcom/zendesk/android/copy/CopyActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "CopyActivity.java"


# instance fields
.field private wv:Lcom/zendesk/android/copy/CopyWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 25
    sget v1, Lcom/zendesk/android/R$layout;->activity_copy:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/copy/CopyActivity;->setContentView(I)V

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/copy/CopyActivity;->displayBackUp(Z)V

    .line 27
    sget v1, Lcom/zendesk/android/R$string;->copy_title:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/copy/CopyActivity;->setTitle(I)V

    .line 29
    sget v1, Lcom/zendesk/android/R$id;->webview_web_view:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/copy/CopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/copy/CopyWebView;

    iput-object v1, p0, Lcom/zendesk/android/copy/CopyActivity;->wv:Lcom/zendesk/android/copy/CopyWebView;

    .line 31
    iget-object v1, p0, Lcom/zendesk/android/copy/CopyActivity;->wv:Lcom/zendesk/android/copy/CopyWebView;

    new-instance v2, Lcom/zendesk/android/copy/CopyActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/copy/CopyActivity$1;-><init>(Lcom/zendesk/android/copy/CopyActivity;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/android/copy/CopyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "commentBody"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, s:Ljava/lang/String;
    const-string v1, "&"

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "%"

    const-string v2, "&#37;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/zendesk/android/copy/CopyActivity;->wv:Lcom/zendesk/android/copy/CopyWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><meta name=\"viewport\" content=\"initial-scale=1.0, user-scalable=no\" /></head><body width=\"100&#37;\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual {v1, v2, v3, v4}, Lcom/zendesk/android/copy/CopyWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 70
    .local v0, infalter:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->copy_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 82
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 83
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->copy_menu_toggle:I

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyActivity;->toggleSelect()V

    .line 89
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 85
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/zendesk/android/copy/CopyActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public toggleSelect()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/copy/CopyActivity;->wv:Lcom/zendesk/android/copy/CopyWebView;

    invoke-virtual {v0}, Lcom/zendesk/android/copy/CopyWebView;->toggleShift()V

    .line 20
    return-void
.end method
