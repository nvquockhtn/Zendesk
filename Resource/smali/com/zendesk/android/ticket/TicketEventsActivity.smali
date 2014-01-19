.class public Lcom/zendesk/android/ticket/TicketEventsActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "TicketEventsActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "TicketEventsActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/ticket/EventsAdapter;

.field private audits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/TicketAudit;",
            ">;"
        }
    .end annotation
.end field

.field private avatarCache:Lcom/zendesk/android/ui/AvatarCache;

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/TicketEventsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->setupAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/TicketEventsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/TicketEventsActivity;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method private setupAdapter()V
    .locals 5

    .prologue
    .line 97
    sget v1, Lcom/zendesk/android/R$id;->list_listview:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketEventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 98
    .local v0, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->adapter:Lcom/zendesk/android/ticket/EventsAdapter;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/zendesk/android/ticket/EventsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->uiHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/zendesk/android/ticket/EventsAdapter;-><init>(Lcom/zendesk/api/model/ticket/Ticket;Landroid/app/Activity;Lcom/zendesk/android/ui/AvatarCache;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->adapter:Lcom/zendesk/android/ticket/EventsAdapter;

    .line 100
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->adapter:Lcom/zendesk/android/ticket/EventsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->adapter:Lcom/zendesk/android/ticket/EventsAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/EventsAdapter;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->adapter:Lcom/zendesk/android/ticket/EventsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1, v2}, Lcom/zendesk/android/ticket/EventsAdapter;->setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 104
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->adapter:Lcom/zendesk/android/ticket/EventsAdapter;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/EventsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    sget v0, Lcom/zendesk/android/R$layout;->activity_events:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->setContentView(I)V

    .line 41
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->uiHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/zendesk/android/ui/AvatarCache;

    invoke-direct {v0}, Lcom/zendesk/android/ui/AvatarCache;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 45
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public loginSuccess()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ticketId"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 54
    .local v0, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 55
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getListItems()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->audits:Ljava/util/List;

    .line 57
    sget v1, Lcom/zendesk/android/R$id;->title_bar_text:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketEventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->audits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    new-instance v1, Lcom/zendesk/android/ticket/TicketEventsActivity$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/TicketEventsActivity$1;-><init>(Lcom/zendesk/android/ticket/TicketEventsActivity;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->setupAdapter()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    invoke-virtual {v0}, Lcom/zendesk/android/ui/AvatarCache;->finished()V

    .line 111
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onDestroy()V

    .line 112
    return-void
.end method
