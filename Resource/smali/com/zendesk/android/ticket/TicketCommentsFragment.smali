.class public Lcom/zendesk/android/ticket/TicketCommentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "TicketCommentsFragment.java"


# static fields
.field private static final COPY:I = 0x0

.field private static final COPY_ALL:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

.field private avatarCache:Lcom/zendesk/android/ui/AvatarCache;

.field private currentUser:Lcom/zendesk/api/model/users/User;

.field private selectedTextView:Landroid/widget/TextView;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/zendesk/android/ticket/TicketCommentsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 138
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 122
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/zendesk/android/copy/CopyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "commentBody"

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->selectedTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->selectedTextView:Landroid/widget/TextView;

    .line 129
    .local v2, yourTextView:Landroid/widget/TextView;
    iput-object v2, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->selectedTextView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 131
    .local v0, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/zendesk/android/R$string;->ticket_comment_copied:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 108
    sget v0, Lcom/zendesk/android/R$string;->menu_copy:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 109
    const/4 v0, 0x1

    sget v1, Lcom/zendesk/android/R$string;->menu_copy_all:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 110
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->selectedTextView:Landroid/widget/TextView;

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->uiHandler:Landroid/os/Handler;

    .line 44
    sget v1, Lcom/zendesk/android/R$layout;->fragment_ticket_comments:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->getAvatarCache()Lcom/zendesk/android/ui/AvatarCache;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 48
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->onDestroy()V

    .line 146
    :cond_0
    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

    .line 147
    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 149
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 73
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 54
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ticket/TicketActivity;

    .line 57
    .local v0, ta:Lcom/zendesk/android/ticket/TicketActivity;
    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 59
    .end local v0           #ta:Lcom/zendesk/android/ticket/TicketActivity;
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 61
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->reload()V

    .line 68
    :cond_1
    return-void
.end method

.method public onTicketCommentEvent(Lcom/zendesk/android/ticket/events/TicketCommentChangedEvent;)V
    .locals 0
    .parameter "event"
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->reload()V

    .line 159
    return-void
.end method

.method public onTicketLoadedEvent(Lcom/zendesk/android/ticket/events/TicketLoadedEvent;)V
    .locals 2
    .parameter "event"
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p1, Lcom/zendesk/android/ticket/events/TicketLoadedEvent;->ticketId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 164
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 165
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->reload()V

    .line 167
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$id;->comments_list:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 89
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lcom/zendesk/android/ticket/CommentsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->uiHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/zendesk/android/ticket/CommentsAdapter;-><init>(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/android/ticket/TicketCommentsFragment;Lcom/zendesk/android/ui/AvatarCache;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

    .line 92
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->adapter:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/CommentsAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 1
    .parameter "ticket"

    .prologue
    .line 78
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    .line 79
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    goto :goto_0
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketCommentsFragment;->currentUser:Lcom/zendesk/api/model/users/User;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
