.class public Lcom/zendesk/android/forums/ForumEntryActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "ForumEntryActivity.java"


# static fields
.field private static final header:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"


# instance fields
.field private fe:Lcom/zendesk/api/model/forums/Topic;

.field private pageTitle:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/forums/ForumEntryActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/forums/ForumEntryActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zendesk/android/forums/ForumEntryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->pageTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zendesk/android/forums/ForumEntryActivity;)Lcom/zendesk/api/model/forums/Topic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    return-object v0
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
    .line 41
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/zendesk/android/forums/ForumEntryActivity;->requestWindowFeature(I)Z

    .line 42
    sget v1, Lcom/zendesk/android/R$layout;->activity_forum_entry:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/forums/ForumEntryActivity;->setContentView(I)V

    .line 44
    sget v1, Lcom/zendesk/android/R$id;->title_bar_text:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/forums/ForumEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->title:Landroid/widget/TextView;

    .line 46
    sget v1, Lcom/zendesk/android/R$id;->forumentry_web_view:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/forums/ForumEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    .line 47
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    move-object v0, p0

    .line 51
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/zendesk/android/forums/ForumEntryActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/forums/ForumEntryActivity$1;-><init>(Lcom/zendesk/android/forums/ForumEntryActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 59
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/zendesk/android/forums/ForumEntryActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/android/forums/ForumEntryActivity$2;-><init>(Lcom/zendesk/android/forums/ForumEntryActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public loginSuccess()V
    .locals 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/zendesk/android/forums/ForumEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "forumEntryId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 86
    .local v6, forumEntryId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getSearch()Lcom/zendesk/api/model/search/Search;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/zendesk/api/model/search/Search;->findForumEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v0}, Lcom/zendesk/api/model/forums/Topic;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->pageTitle:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    invoke-static {}, Lcom/zendesk/api/http/Request;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realm"

    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getLogin()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    invoke-static {}, Lcom/zendesk/api/http/Request;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v3}, Lcom/zendesk/api/model/forums/Topic;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Lcom/zendesk/api/model/forums/Topic;

    invoke-direct {v0, v6}, Lcom/zendesk/api/model/forums/Topic;-><init>(Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    .line 98
    new-instance v0, Lcom/zendesk/android/forums/ForumEntryActivity$3;

    invoke-direct {v0, p0}, Lcom/zendesk/android/forums/ForumEntryActivity$3;-><init>(Lcom/zendesk/android/forums/ForumEntryActivity;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 131
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/forums/ForumEntryActivity;->finish()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "forumEntryId"

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v1}, Lcom/zendesk/api/model/forums/Topic;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public viewComments(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/forums/ForumCommentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "forumEntryId"

    iget-object v2, p0, Lcom/zendesk/android/forums/ForumEntryActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/Topic;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/zendesk/android/forums/ForumEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method
