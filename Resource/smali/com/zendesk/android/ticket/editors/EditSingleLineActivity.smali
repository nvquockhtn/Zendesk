.class public Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditSingleLineActivity.java"


# instance fields
.field protected text:Landroid/widget/EditText;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field protected ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
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
.method protected commitEditsToTicket()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 94
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->setResult(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_single_line:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->setContentView(I)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->displayBackUp(Z)V

    .line 35
    sget v0, Lcom/zendesk/android/R$id;->edit_single_line_text_entry:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    .line 37
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public loginSuccess()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ticketId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 46
    .local v1, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 48
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ticketFieldId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 49
    .local v0, ticketFieldId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4, v0}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 52
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 54
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "otitle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 56
    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    .line 67
    .local v3, type:Lcom/zendesk/api/model/account/TicketFieldType;
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->DECIMAL:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_4

    .line 68
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 74
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v4

    sget-object v5, Lcom/zendesk/api/model/account/TicketFieldType;->TEXT:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v4, v5, :cond_2

    .line 75
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    new-instance v5, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity$1;

    invoke-direct {v5, p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity$1;-><init>(Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    :cond_2
    return-void

    .line 58
    .end local v3           #type:Lcom/zendesk/api/model/account/TicketFieldType;
    :cond_3
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    .restart local v3       #type:Lcom/zendesk/api/model/account/TicketFieldType;
    :cond_4
    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->INTEGER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->text:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method

.method public ok()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->commitEditsToTicket()V

    .line 109
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->finish()V

    .line 110
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 115
    .local v0, inflator:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->editor_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 116
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->commitEditsToTicket()V

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 121
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 123
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->editor_menu_done:I

    if-ne v0, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->ok()V

    .line 128
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 125
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;->finish()V

    goto :goto_0
.end method
