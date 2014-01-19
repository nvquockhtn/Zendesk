.class public Lcom/zendesk/android/ticketlist/TicketListActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "TicketListActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final LISTVIEW_INDEX_KEY:Ljava/lang/String; = "listview.index"

.field private static final TAG:Ljava/lang/String; = "TicketListActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

.field private hideLoading:Ljava/lang/Runnable;

.field private index:I

.field private listView:Landroid/widget/ListView;

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private showLoading:Ljava/lang/Runnable;

.field private view:Lcom/zendesk/api/model/views/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    .line 218
    new-instance v0, Lcom/zendesk/android/ticketlist/TicketListActivity$2;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticketlist/TicketListActivity$2;-><init>(Lcom/zendesk/android/ticketlist/TicketListActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->showLoading:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lcom/zendesk/android/ticketlist/TicketListActivity$3;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticketlist/TicketListActivity$3;-><init>(Lcom/zendesk/android/ticketlist/TicketListActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->hideLoading:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zendesk/android/ticketlist/TicketListActivity;Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;)Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticketlist/TicketListActivity;)Lcom/zendesk/api/model/views/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticketlist/TicketListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticketlist/TicketListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    return v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/ticketlist/TicketListActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->showLoading:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zendesk/android/ticketlist/TicketListActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->hideLoading:Ljava/lang/Runnable;

    return-object v0
.end method

.method private loadViews()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-direct {v0, v1, v2, p0}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/api/model/views/View;Lcom/zendesk/android/ui/ZDFragmentActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    .line 106
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->adapter:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 110
    :cond_0
    return-void
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    :cond_0
    new-instance v0, Lcom/zendesk/android/ticketlist/TicketListActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticketlist/TicketListActivity$1;-><init>(Lcom/zendesk/android/ticketlist/TicketListActivity;)V

    .line 204
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    sget v0, Lcom/zendesk/android/R$layout;->activity_ticketlist:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->setContentView(I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->displayBackUp(Z)V

    .line 45
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 46
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    .line 47
    if-eqz p1, :cond_0

    const-string v0, "listview.index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "listview.index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    .line 50
    :cond_0
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public loginSuccess()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "viewId"

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 83
    .local v0, viewId:Ljava/lang/Long;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 84
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    .line 85
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->requireModelRefresh()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->loadViews()V

    .line 99
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 83
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    if-nez v1, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->finish()V

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->refreshList()V

    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->finish()V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 240
    invoke-super {p0, p1, p1, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Lcom/zendesk/android/ticketlist/TicketListActivity$4;

    invoke-direct {v0, p0, p3}, Lcom/zendesk/android/ticketlist/TicketListActivity$4;-><init>(Lcom/zendesk/android/ticketlist/TicketListActivity;Landroid/content/Intent;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 140
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->refresh_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 141
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 152
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 154
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->refreshList()V

    .line 160
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/zendesk/android/ticketlist/TicketListActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_0

    const-string v0, "listview.index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "listview.index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    .line 75
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "viewId"

    iget-object v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    .line 60
    const-string v0, "listview.index"

    iget v1, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->index:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    :cond_1
    return-void
.end method

.method public shouldRefresh()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v4, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View;->requireModelRefresh()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    :goto_0
    return v3

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/zendesk/android/ticketlist/TicketListActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/Ticket;

    .line 120
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 126
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v2           #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
