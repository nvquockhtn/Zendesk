.class public Lcom/zendesk/android/views/ViewsActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "ViewsActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewsActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/views/ViewsAdapter;

.field private loadingFrame:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/views/ViewsActivity;)Lcom/zendesk/android/views/ViewsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zendesk/android/views/ViewsActivity;Lcom/zendesk/android/views/ViewsAdapter;)Lcom/zendesk/android/views/ViewsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zendesk/android/views/ViewsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/views/ViewsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zendesk/android/views/ViewsActivity;->checkCounts()V

    return-void
.end method

.method private checkCounts()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ViewsWithCounts;->shouldLoadCounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/views/ViewsActivity$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/views/ViewsActivity$1;-><init>(Lcom/zendesk/android/views/ViewsActivity;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ViewsWithCounts;->loadCounts(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 103
    :cond_0
    return-void
.end method

.method private loadViews()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ViewsWithCounts;->getListItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/views/ViewsAdapter;->setViews(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/views/ViewsAdapter;->notifyDataSetChanged()V

    .line 62
    invoke-direct {p0}, Lcom/zendesk/android/views/ViewsActivity;->checkCounts()V

    .line 63
    return-void
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    :cond_0
    new-instance v0, Lcom/zendesk/android/views/ViewsActivity$2;

    invoke-direct {v0, p0}, Lcom/zendesk/android/views/ViewsActivity$2;-><init>(Lcom/zendesk/android/views/ViewsActivity;)V

    .line 184
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    sget v0, Lcom/zendesk/android/R$layout;->activity_views:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/views/ViewsActivity;->setContentView(I)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/views/ViewsActivity;->displayBackUp(Z)V

    .line 33
    sget v0, Lcom/zendesk/android/R$string;->views_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/views/ViewsActivity;->setTitle(I)V

    .line 34
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/views/ViewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 35
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 45
    sget v1, Lcom/zendesk/android/R$id;->views_list:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/views/ViewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 46
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/zendesk/android/views/ViewsAdapter;

    invoke-direct {v1, p0, p0}, Lcom/zendesk/android/views/ViewsAdapter;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    .line 47
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    iget-object v1, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/views/ViewsAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ViewsWithCounts;->requireModelRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/zendesk/android/views/ViewsActivity;->refreshList()V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/zendesk/android/views/ViewsActivity;->loadViews()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/zendesk/android/views/ViewsActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 114
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->refresh_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 115
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 126
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 128
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/zendesk/android/views/ViewsActivity;->refreshList()V

    .line 134
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 130
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/zendesk/android/views/ViewsActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zendesk/android/views/ViewsActivity;->adapter:Lcom/zendesk/android/views/ViewsAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
