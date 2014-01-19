.class public Lcom/zendesk/android/ticket/editors/EditTagsActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditTagsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected acTextView:Landroid/widget/AutoCompleteTextView;

.field protected adapter:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

.field private flowLayout:Lcom/zendesk/android/ui/FlowLayout;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field protected ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->tags:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/EditTagsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->addTag(Ljava/lang/String;)V

    return-void
.end method

.method private addTag(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v5, 0x5

    .line 136
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->tags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->tags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$layout;->autocomplete_entity:I

    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 139
    .local v0, entity:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    sget v1, Lcom/zendesk/android/R$id;->autocomplete_entity_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateTicket()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 174
    const/16 v3, 0x3e9

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->setResult(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public autocompleteEntityClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicketTags()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->tags:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/zendesk/android/ui/FlowLayout;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method

.method public cancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->finish()V

    .line 154
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_tags:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->setContentView(I)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->displayBackUp(Z)V

    .line 46
    sget v0, Lcom/zendesk/android/R$id;->flow_layout:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ui/FlowLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->flowLayout:Lcom/zendesk/android/ui/FlowLayout;

    .line 47
    sget v0, Lcom/zendesk/android/R$id;->autocomp:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    .line 49
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity$1;-><init>(Lcom/zendesk/android/ticket/editors/EditTagsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity$2;-><init>(Lcom/zendesk/android/ticket/editors/EditTagsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 88
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public loginSuccess()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "ticketId"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 97
    .local v6, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v7

    iput-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 99
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "ticketFieldId"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 100
    .local v5, ticketFieldId:Ljava/lang/Long;
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    iput-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 102
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 104
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v7, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    sget v8, Lcom/zendesk/android/R$layout;->user_autocomplete_row:I

    invoke-direct {v7, p0, v8}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->adapter:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    .line 106
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v8, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->adapter:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canEditTicketTags()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 113
    :cond_0
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 114
    iget-object v7, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTagsField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, tags:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 116
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 117
    invoke-direct {p0, v3}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->addTag(Ljava/lang/String;)V

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #tags:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public ok()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->updateTicket()V

    .line 158
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->finish()V

    .line 159
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 188
    .local v0, inflator:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->editor_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 189
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
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->adapter:Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;

    invoke-virtual {v0, p3}, Lcom/zendesk/android/ticket/editors/TagsAutocompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->addTag(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->updateTicket()V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 194
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 196
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->editor_menu_done:I

    if-ne v0, v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->ok()V

    .line 201
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 198
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditTagsActivity;->finish()V

    goto :goto_0
.end method
