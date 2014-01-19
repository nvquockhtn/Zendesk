.class public Lcom/zendesk/android/ticket/editors/EditRequesterActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditRequesterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected acTextView:Landroid/widget/AutoCompleteTextView;

.field protected adapter:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

.field protected newUserButton:Landroid/widget/ImageView;

.field protected ticket:Lcom/zendesk/api/model/ticket/Ticket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->finish()V

    .line 71
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_requester:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->setContentView(I)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->displayBackUp(Z)V

    .line 32
    sget v0, Lcom/zendesk/android/R$id;->autocomp:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    .line 33
    sget v0, Lcom/zendesk/android/R$id;->new_user_button:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->newUserButton:Landroid/widget/ImageView;

    .line 34
    return-void
.end method

.method public createUser(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/ticket/editors/CreateUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x7e0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->setupView()V

    .line 42
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0x3e9

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    if-ne p2, v5, :cond_0

    .line 82
    const-string v3, "userName"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, name:Ljava/lang/String;
    const-string v3, "userEmail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, email:Ljava/lang/String;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v2

    .line 85
    .local v2, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v2, v1}, Lcom/zendesk/api/model/users/User;->setName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2, v0}, Lcom/zendesk/api/model/users/User;->setEmail(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0, v5}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->setResult(I)V

    .line 89
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->finish()V

    .line 91
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #u:Lcom/zendesk/api/model/users/User;
    :cond_0
    return-void
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
    .line 64
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getRequesterField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->adapter:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-virtual {v1, p3}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;->getUser(I)Lcom/zendesk/api/model/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 65
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->setResult(I)V

    .line 66
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->finish()V

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->finish()V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected setupView()V
    .locals 5

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ticketId"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 50
    .local v0, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 52
    sget v1, Lcom/zendesk/android/R$string;->ticket_properties_requester:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->setTitle(I)V

    .line 53
    new-instance v1, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    sget v2, Lcom/zendesk/android/R$layout;->user_autocomplete_row:I

    invoke-direct {v1, p0, v2}, Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->adapter:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    .line 55
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->adapter:Lcom/zendesk/android/ticket/editors/RequesterAutocompleteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;->acTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 58
    return-void
.end method
