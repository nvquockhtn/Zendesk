.class public Lcom/zendesk/android/bookmarks/BookmarksActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "BookmarksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "BookmarksActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;

.field private loadingFrame:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/bookmarks/BookmarksActivity;)Lcom/zendesk/android/bookmarks/BookmarksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/bookmarks/BookmarksActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    new-instance v0, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/bookmarks/BookmarksActivity$1;-><init>(Lcom/zendesk/android/bookmarks/BookmarksActivity;)V

    .line 134
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    sget v0, Lcom/zendesk/android/R$layout;->activity_ticketlist:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->displayBackUp(Z)V

    .line 37
    sget v0, Lcom/zendesk/android/R$string;->bookmarks_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->setTitle(I)V

    .line 38
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 48
    sget v1, Lcom/zendesk/android/R$id;->ticketlist_list:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 49
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    invoke-direct {v1, p0}, Lcom/zendesk/android/bookmarks/BookmarksAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    .line 50
    iget-object v1, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->refreshList()V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 86
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->refresh_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmarks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmarks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/views/Bookmark;

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    .line 74
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 94
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 96
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->refreshList()V

    .line 102
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/zendesk/android/bookmarks/BookmarksActivity;->finish()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onWindowFocusChanged(Z)V

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksActivity;->adapter:Lcom/zendesk/android/bookmarks/BookmarksAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->notifyDataSetChanged()V

    .line 67
    :cond_0
    return-void
.end method
