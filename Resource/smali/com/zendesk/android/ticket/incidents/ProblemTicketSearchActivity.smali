.class public Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "ProblemTicketSearchActivity.java"

# interfaces
.implements Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

.field private listOfTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zendesk/api/ZDAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private results:Lcom/zendesk/api/model/search/ProblemTicketSearch;

.field private searchControl:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listOfTasks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)Lcom/zendesk/api/model/search/ProblemTicketSearch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->results:Lcom/zendesk/api/model/search/ProblemTicketSearch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->callSearch()V

    return-void
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private callSearch()V
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listOfTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listOfTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/ZDAsyncTask;

    .line 69
    .local v1, task:Lcom/zendesk/api/ZDAsyncTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zendesk/api/ZDAsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zendesk/api/ZDAsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/zendesk/api/ZDAsyncTask;
    :cond_1
    new-instance v1, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)V

    .line 94
    .restart local v1       #task:Lcom/zendesk/api/ZDAsyncTask;
    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listOfTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->finish()V

    .line 122
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    sget v0, Lcom/zendesk/android/R$layout;->activity_problem_ticket_search:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->setContentView(I)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->displayBackUp(Z)V

    .line 36
    sget v0, Lcom/zendesk/android/R$id;->problem_ticket_search_edittext:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->searchControl:Landroid/widget/EditText;

    .line 37
    sget v0, Lcom/zendesk/android/R$id;->problem_ticket_results_listview:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listView:Landroid/widget/ListView;

    .line 38
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->searchControl:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->searchControl:Landroid/widget/EditText;

    new-instance v1, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$1;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    :cond_0
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public loginSuccess()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getProblemTicketSearch()Lcom/zendesk/api/model/search/ProblemTicketSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->results:Lcom/zendesk/api/model/search/ProblemTicketSearch;

    .line 107
    new-instance v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->results:Lcom/zendesk/api/model/search/ProblemTicketSearch;

    invoke-direct {v0, v1, v2, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/api/model/search/Search;Lcom/zendesk/android/ui/ZDFragmentActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    .line 108
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->setHideEmptyList(Z)V

    .line 109
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    sget v1, Lcom/zendesk/android/R$string;->problem_ticket_no_results_found:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->setEmptyListTitleLabel(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    invoke-virtual {v0, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->setProblemTicketSelectedListener(Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;)V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->finish()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public problemTicketSelected(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 5
    .parameter "ticket"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v3, "ticketId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string v3, "ticketId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 145
    .local v2, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    .line 146
    .local v1, incidentTicket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 147
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->finish()V

    .line 151
    .end local v1           #incidentTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v2           #ticketId:Ljava/lang/Long;
    :cond_0
    return-void
.end method
