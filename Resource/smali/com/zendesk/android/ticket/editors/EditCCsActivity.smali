.class public Lcom/zendesk/android/ticket/editors/EditCCsActivity;
.super Lcom/zendesk/android/ticket/editors/EditRequesterActivity;
.source "EditCCsActivity.java"


# instance fields
.field private currentCCs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private flowLayout:Lcom/zendesk/android/ui/FlowLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->currentCCs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/EditCCsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finishEntry()V

    return-void
.end method

.method private addUser(Lcom/zendesk/api/model/users/User;)V
    .locals 6
    .parameter "u"

    .prologue
    const/4 v5, 0x5

    .line 64
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->currentCCs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->currentCCs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$layout;->autocomplete_entity:I

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 67
    .local v0, entity:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    new-instance v1, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    sget v1, Lcom/zendesk/android/R$id;->autocomplete_entity_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private finishEntry()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->currentCCs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->setResult(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public autocompleteEntityClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->currentCCs:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/zendesk/android/ui/FlowLayout;->removeView(Landroid/view/View;)V

    .line 79
    :cond_1
    return-void
.end method

.method public ok()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finishEntry()V

    .line 92
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finish()V

    .line 93
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    const/16 v3, 0x3e9

    if-ne p2, v3, :cond_0

    .line 105
    const-string v3, "userName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, name:Ljava/lang/String;
    const-string v3, "userEmail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, email:Ljava/lang/String;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v2

    .line 108
    .local v2, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v2, v1}, Lcom/zendesk/api/model/users/User;->setName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2, v0}, Lcom/zendesk/api/model/users/User;->setEmail(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v2}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->addUser(Lcom/zendesk/api/model/users/User;)V

    .line 112
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #u:Lcom/zendesk/api/model/users/User;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 118
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->editor_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 119
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
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
    .line 59
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->adapter:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-virtual {v0, p3}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->getUser(I)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->addUser(Lcom/zendesk/api/model/users/User;)V

    .line 60
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finishEntry()V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
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
    sget v1, Lcom/zendesk/android/R$id;->editor_menu_done:I

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ok()V

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
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finish()V

    goto :goto_0
.end method

.method protected setupView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 30
    invoke-super {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->setupView()V

    .line 31
    sget v2, Lcom/zendesk/android/R$string;->ticket_properties_cc:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->setTitle(I)V

    .line 32
    sget v2, Lcom/zendesk/android/R$id;->flow_layout:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/ui/FlowLayout;

    iput-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    .line 33
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getCollaboratorsField()Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/CcsTicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/users/User;

    .line 34
    .local v1, u:Lcom/zendesk/api/model/users/User;
    invoke-direct {p0, v1}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->addUser(Lcom/zendesk/api/model/users/User;)V

    goto :goto_0

    .line 37
    .end local v1           #u:Lcom/zendesk/api/model/users/User;
    :cond_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/zendesk/android/ticket/editors/EditCCsActivity$1;

    invoke-direct {v3, p0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity$1;-><init>(Lcom/zendesk/android/ticket/editors/EditCCsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 51
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 53
    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->newUserButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_1
    return-void
.end method
