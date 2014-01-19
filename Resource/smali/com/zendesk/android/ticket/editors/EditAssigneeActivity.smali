.class public Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;
.super Lcom/zendesk/android/ticket/editors/EditListActivity;
.source "EditAssigneeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/android/ticket/editors/EditListActivity",
        "<TE;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field protected acTextView:Landroid/widget/AutoCompleteTextView;

.field protected adapter:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

.field private listView:Landroid/widget/ListView;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ticket/editors/Option",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity<TE;>;"
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method private prepareAssignee()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/android/ticket/editors/Option",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity<TE;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->options:Ljava/util/List;

    .line 72
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v3, v4}, Lcom/zendesk/api/model/ZDModelObject;->safeEquals(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->options:Ljava/util/List;

    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    const/4 v5, 0x0

    const-string v6, "-"

    invoke-direct {v4, v5, v6}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 76
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getGroupCache()Lcom/zendesk/api/model/cache/GroupCache;

    move-result-object v4

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v4, v3}, Lcom/zendesk/api/model/cache/GroupCache;->getGroup(Ljava/lang/Long;)Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 78
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    new-instance v3, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    sget v4, Lcom/zendesk/android/R$layout;->user_autocomplete_row:I

    invoke-direct {v3, p0, v4, v0}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;-><init>(Landroid/content/Context;ILcom/zendesk/api/model/users/Group;)V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->adapter:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    .line 79
    sget v3, Lcom/zendesk/android/R$id;->autocomp:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    .line 81
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;

    invoke-direct {v4, p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;-><init>(Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->adapter:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    .line 94
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/users/User;

    .line 95
    .local v2, u:Lcom/zendesk/api/model/users/User;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->options:Ljava/util/List;

    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #u:Lcom/zendesk/api/model/users/User;
    :cond_2
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->options:Ljava/util/List;

    return-object v3
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity<TE;>;"
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_assignee_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->setContentView(I)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->displayBackUp(Z)V

    .line 39
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 42
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity<TE;>;"
    return-void
.end method

.method public loginSuccess()V
    .locals 7

    .prologue
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity<TE;>;"
    const-wide/16 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    .local v2, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 51
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketFieldId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 52
    .local v1, ticketFieldId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3, v1}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 54
    sget v3, Lcom/zendesk/android/R$id;->list_listview:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->listView:Landroid/widget/ListView;

    .line 56
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->prepareAssignee()Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 60
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v0, Lcom/zendesk/android/ticket/editors/EditListAdapter;

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->options:Ljava/util/List;

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/zendesk/android/ticket/editors/EditListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Object;)V

    .line 62
    .local v0, adapter:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 104
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity<TE;>;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->options:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, newVal:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 112
    .end local v0           #newVal:Ljava/lang/Object;,"TE;"
    :goto_0
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->finish()V

    .line 114
    return-void

    .line 109
    .restart local v0       #newVal:Ljava/lang/Object;,"TE;"
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    check-cast v0, Ljava/lang/Long;

    .end local v0           #newVal:Ljava/lang/Object;,"TE;"
    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
