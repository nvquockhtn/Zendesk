.class public Lcom/zendesk/android/search/SearchableActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "SearchableActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchableActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/search/SearchAdapter;

.field private listView:Landroid/widget/ListView;

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private query:Ljava/lang/String;

.field private results:Lcom/zendesk/api/model/search/Search;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/search/SearchableActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/api/model/search/Search;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/search/SearchableActivity;)Lcom/zendesk/android/search/SearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;

    return-object v0
.end method

.method private performSearch()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p0}, Lcom/zendesk/android/search/SearchableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchableActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;

    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/search/Search;->setQuery(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/zendesk/android/search/SearchableActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/search/SearchableActivity$1;-><init>(Lcom/zendesk/android/search/SearchableActivity;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    sget v0, Lcom/zendesk/android/R$layout;->activity_search:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchableActivity;->setContentView(I)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchableActivity;->displayBackUp(Z)V

    .line 38
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getSearch()Lcom/zendesk/api/model/search/Search;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;

    .line 40
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 41
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    sget v0, Lcom/zendesk/android/R$id;->search_results_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->listView:Landroid/widget/ListView;

    .line 44
    new-instance v0, Lcom/zendesk/android/search/SearchAdapter;

    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;

    invoke-direct {v0, v1, v2, p0}, Lcom/zendesk/android/search/SearchAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/api/model/search/Search;Lcom/zendesk/android/ui/ZDFragmentActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;

    .line 45
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/zendesk/android/search/SearchableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->query:Ljava/lang/String;

    .line 57
    sget v0, Lcom/zendesk/android/R$id;->search_results_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->listView:Landroid/widget/ListView;

    .line 58
    new-instance v0, Lcom/zendesk/android/search/SearchAdapter;

    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zendesk/android/search/SearchableActivity;->results:Lcom/zendesk/api/model/search/Search;

    invoke-direct {v0, v1, v2, p0}, Lcom/zendesk/android/search/SearchAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/api/model/search/Search;Lcom/zendesk/android/ui/ZDFragmentActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;

    .line 59
    iget-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/search/SearchableActivity;->adapter:Lcom/zendesk/android/search/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-direct {p0}, Lcom/zendesk/android/search/SearchableActivity;->performSearch()V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/search/SearchableActivity;->query:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/zendesk/android/search/SearchableActivity;->loggingIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/zendesk/android/search/SearchableActivity;->loginSuccess()V

    .line 73
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 135
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 137
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/search/SearchableActivity;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method
