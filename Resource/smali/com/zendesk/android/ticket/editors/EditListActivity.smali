.class public Lcom/zendesk/android/ticket/editors/EditListActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/android/ui/ZDFragmentActivity;",
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
    .line 34
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method private prepareGroup()Ljava/util/List;
    .locals 6
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
    .line 157
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    .line 158
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v3, Lcom/zendesk/android/ticket/editors/Option;

    const/4 v4, 0x0

    const-string v5, "-"

    invoke-direct {v3, v4, v5}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getGroups()Lcom/zendesk/api/model/users/Groups;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/Groups;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/Group;

    .line 162
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getUsers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v3, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    :cond_3
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    return-object v2
.end method

.method private preparePriority()Ljava/util/List;
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
    .line 139
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    .line 141
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getTicketFields()Lcom/zendesk/api/model/account/TicketFields;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketFields;->getPriority()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getSubTypeId()Ljava/lang/Integer;

    move-result-object v2

    .line 143
    .local v2, subType:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    invoke-static {v2}, Lcom/zendesk/api/model/account/Priority;->getNewPriorityList(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/Priority;

    .line 145
    .local v1, p:Lcom/zendesk/api/model/account/Priority;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Priority;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/zendesk/api/model/strings/PriorityStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Priority;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/zendesk/api/model/account/Priority;
    :cond_1
    invoke-static {v2}, Lcom/zendesk/api/model/account/Priority;->getExistingPriorityList(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/Priority;

    .line 149
    .restart local v1       #p:Lcom/zendesk/api/model/account/Priority;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/Priority;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/zendesk/api/model/strings/PriorityStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Priority;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v1           #p:Lcom/zendesk/api/model/account/Priority;
    :cond_2
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    return-object v3
.end method

.method private prepareStatus()Ljava/util/List;
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
    .line 106
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    .line 108
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getAccountConfig()Lcom/zendesk/api/model/account/AccountConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/AccountConfig;->getTicketsUseStatusHold()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 110
    .local v1, onHold:Z
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 111
    invoke-static {v1}, Lcom/zendesk/api/model/account/Status;->getNewTicketStatusList(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/account/Status;

    .line 112
    .local v2, s:Lcom/zendesk/api/model/account/Status;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/Status;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/zendesk/api/model/account/Status;
    :cond_0
    invoke-static {v1}, Lcom/zendesk/api/model/account/Status;->getExistingTicketStatusList(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/account/Status;

    .line 116
    .restart local v2       #s:Lcom/zendesk/api/model/account/Status;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/Status;->getApiVal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v2           #s:Lcom/zendesk/api/model/account/Status;
    :cond_1
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    return-object v3
.end method

.method private prepareTicketForm()V
    .locals 9

    .prologue
    .line 94
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    .line 95
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/account/TicketField;->getCustomFieldOptions()Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, listOfOptions:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/account/CustomFieldOption;>;"
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/ZendeskModel;->getTicketForms()Lcom/zendesk/api/model/ticket/forms/TicketForms;

    move-result-object v1

    .line 97
    .local v1, forms:Lcom/zendesk/api/model/ticket/forms/TicketForms;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/CustomFieldOption;

    .line 98
    .local v0, cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/zendesk/api/model/ticket/forms/TicketForms;->getTicketFormByTicketFormId(J)Lcom/zendesk/api/model/ticket/forms/TicketForm;

    move-result-object v5

    .line 99
    .local v5, tf:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    new-instance v4, Lcom/zendesk/android/ticket/editors/Option;

    new-instance v6, Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/forms/TicketForm;->getId()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/CustomFieldOption;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .local v4, option:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<TE;>;"
    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v0           #cfo:Lcom/zendesk/api/model/account/CustomFieldOption;
    .end local v4           #option:Lcom/zendesk/android/ticket/editors/Option;,"Lcom/zendesk/android/ticket/editors/Option<TE;>;"
    .end local v5           #tf:Lcom/zendesk/api/model/ticket/forms/TicketForm;
    :cond_0
    return-void
.end method

.method private prepareType()Ljava/util/List;
    .locals 6
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
    .line 124
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    .line 125
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    invoke-static {}, Lcom/zendesk/api/model/account/TicketType;->getNewTicketTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/TicketType;

    .line 127
    .local v1, t:Lcom/zendesk/api/model/account/TicketType;
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v3, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/zendesk/api/model/strings/TicketTypeStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketType;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/zendesk/api/model/account/TicketType;
    :cond_1
    invoke-static {}, Lcom/zendesk/api/model/account/TicketType;->getExistingTicketTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/TicketType;

    .line 131
    .restart local v1       #t:Lcom/zendesk/api/model/account/TicketType;
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    new-instance v3, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/zendesk/api/model/strings/TicketTypeStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketType;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/zendesk/android/ticket/editors/Option;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v1           #t:Lcom/zendesk/api/model/account/TicketType;
    :cond_2
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 205
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->finish()V

    .line 206
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->setContentView(I)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->displayBackUp(Z)V

    .line 51
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 54
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 90
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    return-void
.end method

.method public loginSuccess()V
    .locals 8

    .prologue
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    const-wide/16 v6, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ticketId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 61
    .local v2, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 63
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ticketFieldId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 64
    .local v1, ticketFieldId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4, v1}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 66
    sget v4, Lcom/zendesk/android/R$id;->list_listview:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/editors/EditListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->listView:Landroid/widget/ListView;

    .line 68
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    .line 70
    .local v3, type:Lcom/zendesk/api/model/account/TicketFieldType;
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->prepareStatus()Ljava/util/List;

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 83
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/editors/EditListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Lcom/zendesk/android/ticket/editors/EditListAdapter;

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, p0, v4, v5}, Lcom/zendesk/android/ticket/editors/EditListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Object;)V

    .line 85
    .local v0, adapter:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void

    .line 72
    .end local v0           #adapter:Lcom/zendesk/android/ticket/editors/EditListAdapter;,"Lcom/zendesk/android/ticket/editors/EditListAdapter<TE;>;"
    :cond_1
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->prepareType()Ljava/util/List;

    goto :goto_0

    .line 74
    :cond_2
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->preparePriority()Ljava/util/List;

    goto :goto_0

    .line 76
    :cond_3
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_4

    .line 77
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->prepareGroup()Ljava/util/List;

    goto :goto_0

    .line 78
    :cond_4
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->prepareTicketForm()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 172
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    .line 174
    .local v3, type:Lcom/zendesk/api/model/account/TicketFieldType;
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v4}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, newVal:Ljava/lang/Object;,"TE;"
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_1

    .line 177
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    check-cast v1, Ljava/lang/String;

    .end local v1           #newVal:Ljava/lang/Object;,"TE;"
    invoke-virtual {v4, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 200
    :cond_0
    :goto_0
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/editors/EditListActivity;->setResult(I)V

    .line 201
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->finish()V

    .line 202
    return-void

    .line 178
    .restart local v1       #newVal:Ljava/lang/Object;,"TE;"
    :cond_1
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_2

    .line 179
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    check-cast v1, Ljava/lang/String;

    .end local v1           #newVal:Ljava/lang/Object;,"TE;"
    invoke-virtual {v4, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    .restart local v1       #newVal:Ljava/lang/Object;,"TE;"
    :cond_2
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_3

    .line 181
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getPriorityField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    check-cast v1, Ljava/lang/String;

    .end local v1           #newVal:Ljava/lang/Object;,"TE;"
    invoke-virtual {v4, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    .restart local v1       #newVal:Ljava/lang/Object;,"TE;"
    :cond_3
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_6

    .line 183
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object v5, v1

    check-cast v5, Ljava/lang/Long;

    invoke-static {v4, v5}, Lcom/zendesk/api/model/ZDModelObject;->safeEquals(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 184
    .local v0, changed:Z
    :goto_1
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v5, v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 185
    if-eqz v0, :cond_0

    .line 186
    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Long;

    .end local v1           #newVal:Ljava/lang/Object;,"TE;"
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    .end local v0           #changed:Z
    .restart local v1       #newVal:Ljava/lang/Object;,"TE;"
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 189
    .end local v1           #newVal:Ljava/lang/Object;,"TE;"
    .restart local v0       #changed:Z
    :cond_5
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 192
    .end local v0           #changed:Z
    .restart local v1       #newVal:Ljava/lang/Object;,"TE;"
    :cond_6
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v4}, Lcom/zendesk/android/ticket/editors/Option;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, selection:Ljava/lang/String;
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v4}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 196
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFormField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditListActivity;->options:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/android/ticket/editors/Option;

    invoke-virtual {v4}, Lcom/zendesk/android/ticket/editors/Option;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v5, v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 210
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditListActivity;,"Lcom/zendesk/android/ticket/editors/EditListActivity<TE;>;"
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 212
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditListActivity;->cancel()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
