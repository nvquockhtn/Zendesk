.class public Lcom/zendesk/android/recent/RecentActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "RecentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentActivity"


# instance fields
.field private adapter:Lcom/zendesk/android/recent/RecentAdapter;

.field private loadingFrame:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/recent/RecentActivity;)Lcom/zendesk/android/recent/RecentAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zendesk/android/recent/RecentActivity;Lcom/zendesk/android/recent/RecentAdapter;)Lcom/zendesk/android/recent/RecentAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zendesk/android/recent/RecentActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    new-instance v0, Lcom/zendesk/android/recent/RecentActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/recent/RecentActivity$1;-><init>(Lcom/zendesk/android/recent/RecentActivity;)V

    .line 140
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    sget v0, Lcom/zendesk/android/R$layout;->activity_ticketlist:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/recent/RecentActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/recent/RecentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/recent/RecentActivity;->displayBackUp(Z)V

    .line 37
    sget v0, Lcom/zendesk/android/R$string;->recent_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/recent/RecentActivity;->setTitle(I)V

    .line 38
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 48
    sget v1, Lcom/zendesk/android/R$id;->ticketlist_list:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/recent/RecentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 49
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/zendesk/android/recent/RecentAdapter;

    invoke-direct {v1, p0}, Lcom/zendesk/android/recent/RecentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    .line 50
    iget-object v1, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/recent/RecentActivity;->refreshList()V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/zendesk/android/recent/RecentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 81
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->refresh_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 68
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    invoke-virtual {v2, p3}, Lcom/zendesk/android/recent/RecentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/Ticket;

    .line 70
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/zendesk/android/recent/RecentActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #t:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 93
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 95
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/zendesk/android/recent/RecentActivity;->refreshList()V

    .line 101
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 97
    :cond_1
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/zendesk/android/recent/RecentActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onWindowFocusChanged(Z)V

    .line 61
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentActivity;->adapter:Lcom/zendesk/android/recent/RecentAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/recent/RecentAdapter;->notifyDataSetChanged()V

    .line 64
    :cond_0
    return-void
.end method
