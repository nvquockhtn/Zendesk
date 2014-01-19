.class public Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "IncidentTicketListActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final LISTVIEW_INDEX_KEY:Ljava/lang/String; = "listview.index"

.field private static final TAG:Ljava/lang/String; = "IncidentTicketListActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

.field private index:I

.field private listView:Landroid/widget/ListView;

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;)Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    return v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private loadTicket()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->setTitle()V

    .line 112
    new-instance v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-direct {v0, p0, v1}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;-><init>(Landroid/content/Context;Lcom/zendesk/api/model/ticket/Ticket;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    .line 113
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->adapter:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 119
    :cond_0
    return-void
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    :cond_0
    new-instance v0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity$1;-><init>(Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;)V

    .line 207
    return-void
.end method

.method private setTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getIncidentTickets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$string;->ticket_single_incident_title:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getIncidentTickets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$string;->ticket_multiple_incident_title:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getIncidentTickets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    sget v0, Lcom/zendesk/android/R$layout;->activity_ticketlist:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->setContentView(I)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->displayBackUp(Z)V

    .line 42
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 43
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    .line 44
    if-eqz p1, :cond_0

    const-string v0, "listview.index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "listview.index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "ticketId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "ticketId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticketId:Ljava/lang/Long;

    .line 50
    :cond_1
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

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
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 72
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ticketId"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 74
    .local v0, ticketId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 75
    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticketId:Ljava/lang/Long;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticketId:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticketId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 79
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 80
    const-string v1, "IncidentTicketListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ticket Class id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->requireModelRefresh()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->loadTicket()V

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->finish()V

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->refreshList()V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

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

    .line 153
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->refreshList()V

    .line 159
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->finish()V

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

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "ticketId"

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    .line 60
    const-string v0, "listview.index"

    iget v1, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->index:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    :cond_1
    return-void
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->requireModelRefresh()Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
