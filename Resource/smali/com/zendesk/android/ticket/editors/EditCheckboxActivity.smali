.class public Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditCheckboxActivity.java"


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private checkboxTitle:Landroid/widget/TextView;

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
    .line 19
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method private updateTicket()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 78
    :goto_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->setResult(I)V

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_checkbox:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->setContentView(I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->displayBackUp(Z)V

    .line 31
    sget v0, Lcom/zendesk/android/R$id;->edit_checkbox_box_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->checkboxTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/zendesk/android/R$id;->edit_checkbox_checkbox:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->checkBox:Landroid/widget/CheckBox;

    .line 33
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public loginSuccess()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ticketId"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 42
    .local v1, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 44
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ticketFieldId"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    .local v0, ticketFieldId:Ljava/lang/Long;
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2, v0}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 47
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 48
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->checkboxTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public ok()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->updateTicket()V

    .line 83
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->finish()V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 90
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->editor_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 91
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->finish()V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 99
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->editor_menu_done:I

    if-ne v0, v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->ok()V

    .line 104
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;->finish()V

    goto :goto_0
.end method
