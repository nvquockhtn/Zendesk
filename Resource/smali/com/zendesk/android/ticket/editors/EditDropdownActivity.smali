.class public Lcom/zendesk/android/ticket/editors/EditDropdownActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditDropdownActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/account/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->finish()V

    .line 83
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_list:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->setContentView(I)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->displayBackUp(Z)V

    .line 32
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public loginSuccess()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "ticketId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 41
    .local v4, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 43
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "ticketFieldId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 44
    .local v3, ticketFieldId:Ljava/lang/Long;
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5, v3}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 46
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "ticketFieldOptionName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, customFieldGroupName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/zendesk/api/model/account/TicketField;->getFieldOptionForGroup(Ljava/lang/String;)Lcom/zendesk/api/model/account/CustomFieldOption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/CustomFieldOption;->getSubOptions()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->optionList:Ljava/util/List;

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 53
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    sget v5, Lcom/zendesk/android/R$id;->list_listview:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 56
    .local v2, listView:Landroid/widget/ListView;
    new-instance v0, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->optionList:Ljava/util/List;

    invoke-direct {v0, v5, v6, v7}, Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;-><init>(Landroid/content/Context;Lcom/zendesk/api/model/ticket/TicketFieldEntry;Ljava/util/List;)V

    .line 57
    .local v0, adapter:Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    return-void

    .line 50
    .end local v0           #adapter:Lcom/zendesk/android/ticket/editors/EditDropdownAdapter;
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_0
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/account/TicketField;->getCustomFieldOptions()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->optionList:Ljava/util/List;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    packed-switch p2, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->finish()V

    goto :goto_0

    .line 94
    :pswitch_1
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->finish()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 67
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->optionList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/CustomFieldOption;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/CustomFieldOption;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string v1, "ticketFieldId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 71
    const-string v2, "ticketFieldOptionName"

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->optionList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/CustomFieldOption;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/CustomFieldOption;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/16 v1, 0x7d4

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->optionList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/account/CustomFieldOption;

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/CustomFieldOption;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 75
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 104
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;->finish()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
