.class public Lcom/zendesk/android/ticket/TicketActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "TicketActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TicketActivity"


# instance fields
.field private final avatarCache:Lcom/zendesk/android/ui/AvatarCache;

.field private commentIconView:Landroid/widget/ImageView;

.field private deleteTicketDialog:Z

.field private deletedTicketDialog:Z

.field private dismissChangesDialog:Z

.field protected fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private indicator:Lcom/zendesk/android/ui/ZDTabPageIndicator;

.field private isLoading:Z

.field private isMarkingAsSpam:Z

.field private isPagingMode:Z

.field private loadingCount:I

.field protected loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

.field protected loadingMsg:Landroid/widget/TextView;

.field private macroIconView:Landroid/widget/ImageView;

.field private overflowIconView:Landroid/widget/ImageView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private previousSelectedPage:I

.field private problemTicketId:Ljava/lang/Long;

.field protected progressBarIndeterminate:Landroid/widget/ProgressBar;

.field protected progressBarProgress:Landroid/widget/ProgressBar;

.field private shouldModelRefresh:Z

.field private tabsAdapter:Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field protected ticketId:Ljava/lang/Long;

.field private view:Lcom/zendesk/api/model/views/View;

.field protected viewId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/zendesk/android/ui/AvatarCache;

    invoke-direct {v0}, Lcom/zendesk/android/ui/AvatarCache;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 73
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    .line 85
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->shouldModelRefresh:Z

    .line 1014
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showMacros()V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/TicketActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->showPopoverView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zendesk/android/ticket/TicketActivity;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->problemTicketId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/zendesk/android/ticket/TicketActivity;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/TicketActivity;->applyMacro(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zendesk/android/ticket/TicketActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->createCommentReturned(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->refreshIncidentsLinkedToTicket()V

    return-void
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/views/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->nextTicket()V

    return-void
.end method

.method static synthetic access$2300(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->deleteTicket()V

    return-void
.end method

.method static synthetic access$2800(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->markTicketAsSpam()V

    return-void
.end method

.method static synthetic access$2900(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->refreshTicket()V

    return-void
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setBookmarkIconStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/zendesk/android/ticket/TicketActivity;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->handleRequestError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/zendesk/android/ticket/TicketActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->invalidateMenu()V

    return-void
.end method

.method private applyMacro(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setupForIndeterminateProgress()V

    .line 470
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 472
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showLoading()V

    .line 473
    const-string v2, "macroId"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 475
    .local v0, macroId:Ljava/lang/Long;
    new-instance v1, Lcom/zendesk/api/model/macros/MacroResult;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-direct {v1, v0, v2}, Lcom/zendesk/api/model/macros/MacroResult;-><init>(Ljava/lang/Long;Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 477
    .local v1, mr:Lcom/zendesk/api/model/macros/MacroResult;
    new-instance v2, Lcom/zendesk/android/ticket/TicketActivity$8;

    invoke-direct {v2, p0, v1}, Lcom/zendesk/android/ticket/TicketActivity$8;-><init>(Lcom/zendesk/android/ticket/TicketActivity;Lcom/zendesk/api/model/macros/MacroResult;)V

    .line 505
    .end local v0           #macroId:Ljava/lang/Long;
    .end local v1           #mr:Lcom/zendesk/api/model/macros/MacroResult;
    :cond_0
    return-void
.end method

.method private bookmark()V
    .locals 3

    .prologue
    .line 907
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zendesk/api/model/views/Bookmarks;->createBookmark(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/api/model/ResponseHandler;)V

    .line 908
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setBookmarkIconStatus()V

    .line 909
    return-void
.end method

.method private checkEditStatus()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->invalidateMenu()V

    .line 452
    return-void
.end method

.method private createCommentReturned(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 455
    packed-switch p1, :pswitch_data_0

    .line 466
    :goto_0
    :pswitch_0
    return-void

    .line 457
    :pswitch_1
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->loadCommentsIfFinished()V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteTicket()V
    .locals 5

    .prologue
    .line 919
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->deleteTicketDialog:Z

    .line 920
    sget v1, Lcom/zendesk/android/R$string;->ticket_delete_check_title:I

    sget v2, Lcom/zendesk/android/R$string;->ticket_delete_check:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    sget v4, Lcom/zendesk/android/R$string;->cancel_action:I

    invoke-static {v1, v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 922
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 923
    return-void
.end method

.method private dismissChangesForTicket()V
    .locals 5

    .prologue
    .line 926
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->dismissChangesDialog:Z

    .line 927
    sget v1, Lcom/zendesk/android/R$string;->confirm_dismiss_ticket_changes_title:I

    sget v2, Lcom/zendesk/android/R$string;->confirm_dismiss_ticket_changes_msg:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->continue_action:I

    sget v4, Lcom/zendesk/android/R$string;->cancel_action:I

    invoke-static {v1, v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 929
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 930
    return-void
.end method

.method private getNextTicketId()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 831
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    if-eqz v3, :cond_1

    .line 833
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v2

    .line 834
    .local v2, tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 835
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/Ticket;

    .line 836
    .local v1, tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 838
    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 843
    .end local v0           #i:I
    .end local v1           #tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v2           #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :goto_1
    return-object v3

    .line 834
    .restart local v0       #i:I
    .restart local v1       #tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .restart local v2       #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    .end local v0           #i:I
    .end local v1           #tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v2           #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getPreviousTicketId()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 848
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    if-eqz v3, :cond_1

    .line 849
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v2

    .line 850
    .local v2, tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 851
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/Ticket;

    .line 852
    .local v1, tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_0

    .line 854
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 859
    .end local v0           #i:I
    .end local v1           #tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v2           #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :goto_1
    return-object v3

    .line 850
    .restart local v0       #i:I
    .restart local v1       #tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .restart local v2       #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    .end local v0           #i:I
    .end local v1           #tempTicket:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v2           #tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleRequestError(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 367
    iget-boolean v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 369
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->invalidateMenu()V

    .line 371
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 374
    :cond_0
    sget v3, Lcom/zendesk/android/R$string;->ticket_loading_error_msg:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    :cond_1
    instance-of v3, p1, Lcom/zendesk/api/http/RequestException;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 379
    check-cast v2, Lcom/zendesk/api/http/RequestException;

    .line 381
    .local v2, re:Lcom/zendesk/api/http/RequestException;
    invoke-virtual {v2}, Lcom/zendesk/api/http/RequestException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_3

    .line 382
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->deletedTicketDialog:Z

    .line 383
    sget v3, Lcom/zendesk/android/R$string;->ticket_loading_error_title:I

    sget v4, Lcom/zendesk/android/R$string;->ticket_deleted_message:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v3, v4, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 384
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 396
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #re:Lcom/zendesk/api/http/RequestException;
    :cond_2
    :goto_0
    return-void

    .line 387
    .restart local v1       #message:Ljava/lang/String;
    .restart local v2       #re:Lcom/zendesk/api/http/RequestException;
    :cond_3
    sget v3, Lcom/zendesk/android/R$string;->ticket_loading_error_title:I

    sget v4, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v3, v1, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 388
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0

    .line 392
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    .end local v2           #re:Lcom/zendesk/api/http/RequestException;
    :cond_4
    sget v3, Lcom/zendesk/android/R$string;->ticket_loading_error_title:I

    sget v4, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v3, v1, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 393
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0
.end method

.method private invalidateMenu()V
    .locals 0

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->supportInvalidateOptionsMenu()V

    .line 448
    return-void
.end method

.method private loadCommentsIfFinished()V
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->tabsAdapter:Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/ticket/events/TicketCommentChangedEvent;

    invoke-direct {v1}, Lcom/zendesk/android/ticket/events/TicketCommentChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 362
    :cond_0
    return-void
.end method

.method private loadNextPageAndGoToNextPage()V
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 787
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showLoading()V

    .line 788
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$12;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$12;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 812
    return-void
.end method

.method private loadTicket()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setBookmarkIconStatus()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V

    .line 228
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->refreshTicket()V

    goto :goto_0
.end method

.method private loadViewIfFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    iget v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I

    if-nez v0, :cond_1

    .line 343
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/ticket/events/TicketLoadedEvent;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    invoke-direct {v1, v2}, Lcom/zendesk/android/ticket/events/TicketLoadedEvent;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->indicator:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->hasCommentsBeenEdited()Z

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setItemStateIndicatorVisible(IZ)V

    .line 345
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->indicator:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->hasPropertiesBeenEdited()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setItemStateIndicatorVisible(IZ)V

    .line 347
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/TicketPermissions;->getCanEditTicktProperties()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->macroIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->macroIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private markTicketAsSpam()V
    .locals 5

    .prologue
    .line 887
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isMarkingAsSpam:Z

    .line 888
    sget v1, Lcom/zendesk/android/R$string;->ticket_mark_as_spam_title:I

    sget v2, Lcom/zendesk/android/R$string;->ticket_mark_as_spam_msg:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->spam_action:I

    sget v4, Lcom/zendesk/android/R$string;->cancel_action:I

    invoke-static {v1, v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;II)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 890
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 891
    return-void
.end method

.method private nextTicket()V
    .locals 3

    .prologue
    .line 865
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->hasBeenEdited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    :goto_0
    return-void

    .line 868
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 869
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getNextTicketId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 870
    const-string v1, "viewId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 871
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->startActivity(Landroid/content/Intent;)V

    .line 872
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->finish()V

    goto :goto_0
.end method

.method private previousTicket()V
    .locals 3

    .prologue
    .line 878
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getPreviousTicketId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 880
    const-string v1, "viewId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->startActivity(Landroid/content/Intent;)V

    .line 882
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->finish()V

    .line 884
    return-void
.end method

.method private refreshIncidentsLinkedToTicket()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$6;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$6;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 339
    return-void
.end method

.method private refreshTicket()V
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setupForIndeterminateProgress()V

    .line 250
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 251
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 252
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 253
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showLoading()V

    .line 255
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$4;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$4;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 280
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$5;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$5;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 303
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->refreshIncidentsLinkedToTicket()V

    .line 304
    return-void
.end method

.method private setBookmarkIconStatus()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->isBookmarked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget v0, Lcom/zendesk/android/R$drawable;->bookmark:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->setDisplayIcon(I)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    sget v0, Lcom/zendesk/android/R$drawable;->ic_menu_dashboard:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->setDisplayIcon(I)V

    goto :goto_0
.end method

.method private setMenuItemEnabled(Lcom/actionbarsherlock/view/MenuItem;Z)V
    .locals 2
    .parameter "item"
    .parameter "enabled"

    .prologue
    .line 779
    if-eqz p1, :cond_0

    .line 780
    invoke-interface {p1, p2}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 781
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p2, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 783
    :cond_0
    return-void

    .line 781
    :cond_1
    const/16 v0, 0x7c

    goto :goto_0
.end method

.method private shouldLoadViewsNextPage()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 816
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewTickets;->mayBeMorePages()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, tempPosition:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 819
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/Ticket;

    .line 820
    .local v2, ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getNextTicketId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    move v1, v0

    .line 818
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    .end local v2           #ticket:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_1
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x2

    if-gt v4, v5, :cond_2

    const/4 v3, 0x1

    .line 827
    .end local v0           #i:I
    .end local v1           #tempPosition:I
    :cond_2
    return v3
.end method

.method private showMacros()V
    .locals 2

    .prologue
    .line 894
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/macros/MacrosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 895
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x7d8

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 896
    return-void
.end method

.method private showPopoverView(Landroid/view/View;)V
    .locals 8
    .parameter "view"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1054
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->openOptionsMenu()V

    .line 1106
    :goto_0
    return-void

    .line 1058
    :cond_0
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-direct {v3, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1059
    .local v3, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    sget v6, Lcom/zendesk/android/R$menu;->edit_ticket_menu:I

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1062
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1064
    .local v2, menu:Landroid/view/Menu;
    if-eqz v2, :cond_3

    .line 1065
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v5, :cond_3

    .line 1066
    sget v5, Lcom/zendesk/android/R$id;->ticket_menu_unbookmark:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1067
    .local v4, unBookmarkItem:Landroid/view/MenuItem;
    sget v5, Lcom/zendesk/android/R$id;->ticket_menu_bookmark:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1068
    .local v0, bookmarkItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 1069
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->isBookmarked()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1070
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->isBookmarked()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1073
    :cond_1
    sget v5, Lcom/zendesk/android/R$id;->ticket_menu_delete:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1074
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 1075
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canDeleteTicket()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1077
    :cond_2
    sget v5, Lcom/zendesk/android/R$id;->ticket_menu_mark_as_spam:I

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1078
    if-eqz v1, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canDeleteTicket()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1084
    .end local v0           #bookmarkItem:Landroid/view/MenuItem;
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v4           #unBookmarkItem:Landroid/view/MenuItem;
    :cond_3
    new-instance v5, Lcom/zendesk/android/ticket/TicketActivity$15;

    invoke-direct {v5, p0}, Lcom/zendesk/android/ticket/TicketActivity$15;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1104
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 1070
    .restart local v0       #bookmarkItem:Landroid/view/MenuItem;
    .restart local v4       #unBookmarkItem:Landroid/view/MenuItem;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private unbookmark()V
    .locals 4

    .prologue
    .line 912
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/zendesk/api/model/views/Bookmarks;->deleteBookmark(JLcom/zendesk/api/model/ResponseHandler;)V

    .line 913
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setBookmarkIconStatus()V

    .line 914
    return-void
.end method


# virtual methods
.method public declared-synchronized addLoadingRequest()V
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelEdits(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->revertEdits()V

    .line 582
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V

    .line 583
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V

    .line 584
    return-void
.end method

.method public createComment(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    if-eq v1, v2, :cond_0

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 418
    const/16 v1, 0x7d3

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 420
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 92
    sget v1, Lcom/zendesk/android/R$layout;->activity_ticket:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->setContentView(I)V

    .line 93
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->displayBackUp(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 96
    new-instance v1, Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v1, p0, v2}, Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;-><init>(Lcom/zendesk/android/ticket/TicketActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->tabsAdapter:Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;

    .line 98
    sget v1, Lcom/zendesk/android/R$id;->pager:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 99
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->tabsAdapter:Lcom/zendesk/android/ticket/TicketActivity$TabPageAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 101
    sget v1, Lcom/zendesk/android/R$id;->indicator:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/ZDTabPageIndicator;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->indicator:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    .line 102
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->indicator:Lcom/zendesk/android/ui/ZDTabPageIndicator;

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, v3}, Lcom/zendesk/android/ui/ZDTabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 104
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/zendesk/android/R$id;->ticket_loading:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/zendesk/android/ui/LoadingFragment;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    .line 105
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/LoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$id;->loading_progressbar:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    .line 106
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/LoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$id;->loading_progress_bar_progress:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    .line 107
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/LoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/zendesk/android/R$id;->loading_msg:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingMsg:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/LoadingFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    sget v1, Lcom/zendesk/android/R$id;->ticket_edit_menu_overflow:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->overflowIconView:Landroid/widget/ImageView;

    .line 111
    sget v1, Lcom/zendesk/android/R$id;->ticket_edit_menu_comment:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->commentIconView:Landroid/widget/ImageView;

    .line 112
    sget v1, Lcom/zendesk/android/R$id;->ticket_edit_menu_macro:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->macroIconView:Landroid/widget/ImageView;

    .line 114
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->macroIconView:Landroid/widget/ImageView;

    new-instance v2, Lcom/zendesk/android/ticket/TicketActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/TicketActivity$1;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->commentIconView:Landroid/widget/ImageView;

    new-instance v2, Lcom/zendesk/android/ticket/TicketActivity$2;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/TicketActivity$2;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->overflowIconView:Landroid/widget/ImageView;

    new-instance v2, Lcom/zendesk/android/ticket/TicketActivity$3;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/TicketActivity$3;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 136
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 139
    if-eqz p1, :cond_1

    const-string v1, "ticketId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    const-string v1, "ticketId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    .line 141
    const-string v1, "sTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->previousSelectedPage:I

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->requireModelRefresh()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->shouldModelRefresh:Z

    .line 148
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "pEvent"

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->isLoading:Z

    if-nez v0, :cond_0

    .line 409
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doNegativeClick()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1008
    iput-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->deletedTicketDialog:Z

    .line 1009
    iput-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->deleteTicketDialog:Z

    .line 1010
    iput-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->dismissChangesDialog:Z

    .line 1011
    iput-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->isMarkingAsSpam:Z

    .line 1012
    return-void
.end method

.method public doPositiveClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 934
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->deletedTicketDialog:Z

    if-eqz v0, :cond_1

    .line 935
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->deletedTicketDialog:Z

    .line 936
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->finish()V

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->deleteTicketDialog:Z

    if-eqz v0, :cond_2

    .line 938
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->deleteTicketDialog:Z

    .line 939
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$13;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$13;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    goto :goto_0

    .line 968
    :cond_2
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->dismissChangesDialog:Z

    if-eqz v0, :cond_3

    .line 969
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->revertEdits()V

    .line 970
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->finish()V

    goto :goto_0

    .line 971
    :cond_3
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->isMarkingAsSpam:Z

    if-eqz v0, :cond_0

    .line 972
    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isMarkingAsSpam:Z

    .line 973
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$14;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$14;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    goto :goto_0
.end method

.method public getAvatarCache()Lcom/zendesk/android/ui/AvatarCache;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    return-object v0
.end method

.method public getTicket()Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method public declared-synchronized hideLoading()V
    .locals 2

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isLoading:Z

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->removeLoadingRequest()V

    .line 529
    iget v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 531
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 532
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isLoading:Z

    .line 533
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .end local v0           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    monitor-exit p0

    return-void

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isLoggingIn()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 170
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showLoading()V

    .line 172
    :cond_0
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public loginSuccess()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 179
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 180
    .local v0, ticketId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "viewId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 182
    .local v1, viewId:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 183
    iput-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    .line 185
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 186
    iput-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->viewId:Ljava/lang/Long;

    .line 187
    iput-boolean v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    .line 188
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->viewId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    .line 190
    iget-boolean v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getReportedCount()I

    move-result v3

    if-le v3, v2, :cond_4

    :goto_0
    iput-boolean v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v2, :cond_2

    .line 193
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticketId:Ljava/lang/Long;

    invoke-interface {v2, v3}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 196
    :cond_2
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-interface {v2, v3, p0}, Lcom/zendesk/api/model/cache/TicketCache;->markTicketInUse(Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/Object;)V

    .line 198
    invoke-static {p0}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->ticketHasNotification(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-static {p0}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->markTicketRead(Landroid/content/Context;J)V

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->loadTicket()V

    .line 203
    return-void

    .line 190
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 425
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 426
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zendesk/android/ticket/TicketActivity$7;-><init>(Lcom/zendesk/android/ticket/TicketActivity;IILandroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->run(Ljava/lang/Thread;)V

    .line 444
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->hasBeenEdited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->dismissChangesForTicket()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 664
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v4, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    .line 666
    .local v1, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v4, Lcom/zendesk/android/R$menu;->ticket_menu:I

    invoke-virtual {v1, v4, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 668
    sget v4, Lcom/zendesk/android/R$id;->ticket_menu_submit:I

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 669
    .local v2, sendButton:Lcom/actionbarsherlock/view/MenuItem;
    sget v4, Lcom/zendesk/android/R$id;->ticket_menu_ticket_up:I

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    .line 670
    .local v3, upButton:Lcom/actionbarsherlock/view/MenuItem;
    sget v4, Lcom/zendesk/android/R$id;->ticket_menu_ticket_down:I

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 671
    .local v0, downButton:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v2, :cond_0

    .line 672
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->hasBeenEdited()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 675
    :cond_0
    iget-boolean v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    if-eqz v4, :cond_4

    .line 676
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->hasBeenEdited()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 677
    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->hasBeenEdited()Z

    move-result v4

    if-nez v4, :cond_1

    move v6, v5

    :cond_1
    invoke-interface {v0, v6}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 683
    .end local v0           #downButton:Lcom/actionbarsherlock/view/MenuItem;
    .end local v1           #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    .end local v2           #sendButton:Lcom/actionbarsherlock/view/MenuItem;
    .end local v3           #upButton:Lcom/actionbarsherlock/view/MenuItem;
    :cond_2
    :goto_1
    return v5

    .restart local v0       #downButton:Lcom/actionbarsherlock/view/MenuItem;
    .restart local v1       #inflater:Lcom/actionbarsherlock/view/MenuInflater;
    .restart local v2       #sendButton:Lcom/actionbarsherlock/view/MenuItem;
    .restart local v3       #upButton:Lcom/actionbarsherlock/view/MenuItem;
    :cond_3
    move v4, v6

    .line 676
    goto :goto_0

    .line 679
    :cond_4
    iget-boolean v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 680
    iget-boolean v4, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    invoke-interface {v0, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 657
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onDestroy()V

    .line 658
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    invoke-virtual {v0}, Lcom/zendesk/android/ui/AvatarCache;->finished()V

    .line 659
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-interface {v0, v1, p0}, Lcom/zendesk/api/model/cache/TicketCache;->finishedWithTicket(Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/Object;)V

    .line 660
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 745
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 746
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_submit:I

    if-ne v0, v1, :cond_1

    .line 747
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->submit(Landroid/view/View;)V

    .line 775
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 748
    :cond_1
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_apply_macro:I

    if-ne v0, v1, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showMacros()V

    goto :goto_0

    .line 750
    :cond_2
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_ticket_up:I

    if-ne v0, v1, :cond_3

    .line 751
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->previousTicket()V

    goto :goto_0

    .line 752
    :cond_3
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_ticket_down:I

    if-ne v0, v1, :cond_5

    .line 753
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->shouldLoadViewsNextPage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->loadNextPageAndGoToNextPage()V

    goto :goto_0

    .line 756
    :cond_4
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->nextTicket()V

    goto :goto_0

    .line 758
    :cond_5
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_bookmark:I

    if-eq v0, v1, :cond_6

    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_unbookmark:I

    if-ne v0, v1, :cond_7

    .line 760
    :cond_6
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->toggleBookmark()V

    goto :goto_0

    .line 761
    :cond_7
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_refresh:I

    if-ne v0, v1, :cond_8

    .line 762
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->refreshTicket()V

    goto :goto_0

    .line 763
    :cond_8
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_mark_as_spam:I

    if-ne v0, v1, :cond_9

    .line 764
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->markTicketAsSpam()V

    goto :goto_0

    .line 765
    :cond_9
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_delete:I

    if-ne v0, v1, :cond_a

    .line 766
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->deleteTicket()V

    goto :goto_0

    .line 767
    :cond_a
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->hasBeenEdited()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 769
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->dismissChangesForTicket()V

    goto :goto_0

    .line 771
    :cond_b
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPause()V

    .line 245
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    .line 689
    iget-boolean v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->isLoading:Z

    if-eqz v8, :cond_0

    .line 690
    const/4 v8, 0x0

    .line 739
    :goto_0
    return v8

    .line 693
    :cond_0
    sget v8, Lcom/zendesk/android/R$id;->ticket_menu_bookmark:I

    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 694
    .local v0, bookmarkMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    sget v8, Lcom/zendesk/android/R$id;->ticket_menu_unbookmark:I

    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v7

    .line 695
    .local v7, unBookmarkMenuItem:Lcom/actionbarsherlock/view/MenuItem;
    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v8, :cond_1

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 696
    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->isBookmarked()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 697
    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->isBookmarked()Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v0, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 699
    :cond_1
    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, item:Lcom/actionbarsherlock/view/MenuItem;
    sget v8, Lcom/zendesk/android/R$id;->ticket_menu_apply_macro:I

    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 702
    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v8

    sget-object v9, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canUpdateTicket()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketPermissions;->getCanEditTicktProperties()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 703
    :cond_2
    if-eqz v2, :cond_3

    .line 704
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 711
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 712
    iget-object v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getPermissions()Lcom/zendesk/api/model/ticket/TicketPermissions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/TicketPermissions;->canDeleteTicket()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v2, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 717
    .end local v2           #item:Lcom/actionbarsherlock/view/MenuItem;
    :cond_4
    iget-boolean v8, p0, Lcom/zendesk/android/ticket/TicketActivity;->isPagingMode:Z

    if-eqz v8, :cond_5

    .line 719
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getPreviousTicketId()Ljava/lang/Long;

    move-result-object v6

    .line 720
    .local v6, previousTicketId:Ljava/lang/Long;
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->getNextTicketId()Ljava/lang/Long;

    move-result-object v4

    .line 722
    .local v4, nextTicketId:Ljava/lang/Long;
    sget v8, Lcom/zendesk/android/R$id;->ticket_menu_ticket_up:I

    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 723
    .local v5, previousButton:Lcom/actionbarsherlock/view/MenuItem;
    sget v8, Lcom/zendesk/android/R$id;->ticket_menu_ticket_down:I

    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    .line 724
    .local v3, nextButton:Lcom/actionbarsherlock/view/MenuItem;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    const/4 v8, 0x1

    :goto_3
    invoke-direct {p0, v5, v8}, Lcom/zendesk/android/ticket/TicketActivity;->setMenuItemEnabled(Lcom/actionbarsherlock/view/MenuItem;Z)V

    .line 725
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    const/4 v8, 0x1

    :goto_4
    invoke-direct {p0, v3, v8}, Lcom/zendesk/android/ticket/TicketActivity;->setMenuItemEnabled(Lcom/actionbarsherlock/view/MenuItem;Z)V

    .line 728
    .end local v3           #nextButton:Lcom/actionbarsherlock/view/MenuItem;
    .end local v4           #nextTicketId:Ljava/lang/Long;
    .end local v5           #previousButton:Lcom/actionbarsherlock/view/MenuItem;
    .end local v6           #previousTicketId:Ljava/lang/Long;
    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_b

    .line 729
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->size()I

    move-result v8

    if-ge v1, v8, :cond_b

    .line 730
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 731
    .restart local v2       #item:Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v8

    sget v9, Lcom/zendesk/android/R$id;->ticket_menu_submit:I

    if-eq v8, v9, :cond_6

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v8

    sget v9, Lcom/zendesk/android/R$id;->ticket_menu_ticket_up:I

    if-eq v8, v9, :cond_6

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v8

    sget v9, Lcom/zendesk/android/R$id;->ticket_menu_ticket_down:I

    if-eq v8, v9, :cond_6

    .line 734
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 729
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 697
    .end local v1           #i:I
    .end local v2           #item:Lcom/actionbarsherlock/view/MenuItem;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 707
    .restart local v2       #item:Lcom/actionbarsherlock/view/MenuItem;
    :cond_8
    if-eqz v2, :cond_3

    .line 708
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_2

    .line 724
    .end local v2           #item:Lcom/actionbarsherlock/view/MenuItem;
    .restart local v3       #nextButton:Lcom/actionbarsherlock/view/MenuItem;
    .restart local v4       #nextTicketId:Ljava/lang/Long;
    .restart local v5       #previousButton:Lcom/actionbarsherlock/view/MenuItem;
    .restart local v6       #previousTicketId:Ljava/lang/Long;
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .line 725
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 739
    .end local v3           #nextButton:Lcom/actionbarsherlock/view/MenuItem;
    .end local v4           #nextTicketId:Ljava/lang/Long;
    .end local v5           #previousButton:Lcom/actionbarsherlock/view/MenuItem;
    .end local v6           #previousTicketId:Ljava/lang/Long;
    :cond_b
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onResume()V

    .line 238
    invoke-static {}, Lcom/zendesk/android/ticket/BusProvider;->getInstance()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "ticketId"

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    .line 214
    :cond_1
    return-void
.end method

.method public declared-synchronized removeLoadingRequest()V
    .locals 1

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupForIndeterminateProgress()V
    .locals 1

    .prologue
    .line 569
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$10;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$10;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method

.method public setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;
    .locals 3
    .parameter "msgId"

    .prologue
    .line 540
    new-instance v0, Lcom/zendesk/android/ticket/TicketActivity$9;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/TicketActivity$9;-><init>(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 562
    .local v0, prog:Lcom/zendesk/api/http/ProgressMonitor;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 563
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingMsg:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 565
    return-object v0
.end method

.method public shouldRefresh()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 517
    iget-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isLoading:Z

    if-nez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 519
    .local v0, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->loadingFragment:Lcom/zendesk/android/ui/LoadingFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 520
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zendesk/android/ticket/TicketActivity;->isLoading:Z

    .line 521
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 523
    .end local v0           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 587
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->problemTicketId:Ljava/lang/Long;

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, prog:Lcom/zendesk/api/http/ProgressMonitor;
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTemporaryComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 590
    sget v2, Lcom/zendesk/android/R$string;->uploading_msg:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/TicketActivity;->setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;

    move-result-object v1

    .line 595
    :goto_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :goto_1
    iput-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->problemTicketId:Ljava/lang/Long;

    .line 600
    :cond_0
    move-object v0, v1

    .line 602
    .local v0, pm:Lcom/zendesk/api/http/ProgressMonitor;
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 603
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->showLoading()V

    .line 605
    new-instance v2, Lcom/zendesk/android/ticket/TicketActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/zendesk/android/ticket/TicketActivity$11;-><init>(Lcom/zendesk/android/ticket/TicketActivity;Lcom/zendesk/api/http/ProgressMonitor;)V

    .line 643
    return-void

    .line 592
    .end local v0           #pm:Lcom/zendesk/api/http/ProgressMonitor;
    :cond_1
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/TicketActivity;->setupForIndeterminateProgress()V

    goto :goto_0

    .line 596
    :cond_2
    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_1
.end method

.method public toggleBookmark()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->isBookmarked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->unbookmark()V

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-direct {p0}, Lcom/zendesk/android/ticket/TicketActivity;->bookmark()V

    goto :goto_0
.end method
