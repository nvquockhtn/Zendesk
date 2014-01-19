.class public Lcom/zendesk/android/dashboard/DashboardActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/zendesk/android/dashboard/NotificationsObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "DashboardActivity"

.field private static drawWasOpen:Z


# instance fields
.field private activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

.field private activityStreamListView:Landroid/widget/ListView;

.field private addViewsButton:Landroid/widget/RelativeLayout;

.field private addViewsListener:Landroid/view/View$OnClickListener;

.field private addViewsRow:Landroid/widget/RelativeLayout;

.field private badge:Landroid/widget/TextView;

.field private downEvent:Z

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private notificationsDraw:Landroid/widget/SlidingDrawer;

.field private notificationsLoadingFrame:Landroid/widget/RelativeLayout;

.field private row1:Landroid/widget/RelativeLayout;

.field private row2:Landroid/widget/RelativeLayout;

.field private row3:Landroid/widget/RelativeLayout;

.field private searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

.field private selectViewListener:Landroid/view/View$OnClickListener;

.field private settingsMenuItem:Lcom/actionbarsherlock/view/MenuItem;

.field private viewsArea:Landroid/widget/LinearLayout;

.field private viewsMenuItem:Lcom/actionbarsherlock/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 327
    new-instance v0, Lcom/zendesk/android/dashboard/DashboardActivity$3;

    invoke-direct {v0, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$3;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->selectViewListener:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lcom/zendesk/android/dashboard/DashboardActivity$4;

    invoke-direct {v0, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$4;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/dashboard/DashboardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->downEvent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/zendesk/android/dashboard/DashboardActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->downEvent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/zendesk/android/dashboard/DashboardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateViewsList()V

    return-void
.end method

.method static synthetic access$300(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsLoadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/dashboard/DashboardActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/zendesk/android/dashboard/NotificationsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zendesk/android/dashboard/DashboardActivity;Lcom/zendesk/android/dashboard/NotificationsAdapter;)Lcom/zendesk/android/dashboard/NotificationsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zendesk/android/dashboard/DashboardActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/dashboard/DashboardActivity;->performSearch(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zendesk/android/dashboard/DashboardActivity;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->settingsMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method private addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V
    .locals 3
    .parameter "row"
    .parameter "v"

    .prologue
    .line 313
    if-nez p2, :cond_0

    .line 324
    :goto_0
    return-void

    .line 314
    :cond_0
    sget v2, Lcom/zendesk/android/R$id;->dashboard_views_title:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 315
    .local v1, title:Landroid/widget/TextView;
    sget v2, Lcom/zendesk/android/R$id;->views_ticket_count:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 316
    .local v0, count:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/zendesk/api/model/views/View;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p2}, Lcom/zendesk/api/model/views/View;->getCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 318
    const-string v2, "..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p2}, Lcom/zendesk/api/model/views/View;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private gotoTicket()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 117
    .local v1, ticketId:J
    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, i:Landroid/content/Intent;
    const-string v3, "ticketId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private logout()V
    .locals 0

    .prologue
    .line 612
    invoke-static {p0}, Lcom/zendesk/android/IntentReceiver;->removeNotificationsObserver(Lcom/zendesk/android/dashboard/NotificationsObserver;)V

    .line 613
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->finish()V

    .line 615
    return-void
.end method

.method private performSearch(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "searchString"

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zendesk/android/search/SearchableActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 644
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method

.method public static popToDashboard(Landroid/app/Activity;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/dashboard/DashboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 635
    return-void
.end method

.method private updateViewsList()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 266
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v0

    .line 267
    .local v0, config:Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->verifyViews(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->getViews()Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, views:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    sget v5, Lcom/zendesk/android/R$id;->divider:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 273
    .local v1, divider:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .local v2, dividerLps:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 277
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row2:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row3:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_2
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 285
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 287
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 289
    .local v3, rows:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 290
    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row1:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V

    .line 291
    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row2:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V

    .line 292
    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row3:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v7

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V

    .line 293
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 295
    :cond_3
    if-ne v3, v11, :cond_4

    .line 296
    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row1:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V

    .line 297
    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row2:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V

    .line 298
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row3:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 301
    :cond_4
    if-ne v3, v10, :cond_0

    .line 302
    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row1:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Lcom/zendesk/api/model/ViewsWithCounts;->getView(Ljava/lang/Long;)Lcom/zendesk/api/model/views/View;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->addRow(Landroid/widget/RelativeLayout;Lcom/zendesk/api/model/views/View;)V

    .line 303
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row2:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row3:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 305
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateWindow()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateBadgeValue()V

    .line 226
    invoke-direct {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateViewsList()V

    .line 227
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ViewsWithCounts;->shouldLoadCounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getViews()Lcom/zendesk/api/model/ViewsWithCounts;

    move-result-object v0

    new-instance v1, Lcom/zendesk/android/dashboard/DashboardActivity$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$2;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ViewsWithCounts;->loadCounts(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->pushReceived()V

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method public configureViews(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/dashboard/DashboardViewsConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 133
    sget v5, Lcom/zendesk/android/R$layout;->activity_dashboard:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->setContentView(I)V

    .line 135
    sget v5, Lcom/zendesk/android/R$id;->dash_views_list:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    .line 136
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    sget v6, Lcom/zendesk/android/R$id;->dash_add_views_button:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    sget v6, Lcom/zendesk/android/R$id;->dash_view_row_1:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row1:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    sget v6, Lcom/zendesk/android/R$id;->dash_view_row_2:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row2:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    sget v6, Lcom/zendesk/android/R$id;->dash_view_row_3:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row3:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsArea:Landroid/widget/LinearLayout;

    sget v6, Lcom/zendesk/android/R$id;->dash_add_views_row:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsRow:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row1:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->selectViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row2:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->selectViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->row3:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->selectViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsRow:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_0
    sget v5, Lcom/zendesk/android/R$id;->notifications_slide:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SlidingDrawer;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    .line 149
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v5, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 150
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v5, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 152
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    sget v6, Lcom/zendesk/android/R$id;->notification_list:I

    invoke-virtual {v5, v6}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;

    .line 153
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    sget v5, Lcom/zendesk/android/R$id;->notifications_loading_frame:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsLoadingFrame:Landroid/widget/RelativeLayout;

    .line 156
    sget v5, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 157
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    sget v5, Lcom/zendesk/android/R$id;->notification_badge:I

    invoke-virtual {p0, v5}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->badge:Landroid/widget/TextView;

    .line 162
    sget-boolean v5, Lcom/zendesk/android/dashboard/DashboardActivity;->drawWasOpen:Z

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v5}, Landroid/widget/SlidingDrawer;->open()V

    .line 167
    :cond_1
    invoke-static {}, Lcom/zendesk/android/prefs/Preferences;->getConfig()Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/android/prefs/Preferences$ApplicationConfig;->isNotificationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 169
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, pushId:Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, c2dm:Ljava/lang/String;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 174
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v5

    const-string v6, "Android"

    invoke-virtual {v5, v3, v2, v6}, Lcom/zendesk/api/ZendeskModel;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v2           #c2dm:Ljava/lang/String;
    .end local v3           #pushId:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/zendesk/android/IntentReceiver;->registerNotificationsObserver(Lcom/zendesk/android/dashboard/NotificationsObserver;)V

    .line 180
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_3

    .line 181
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    sget v6, Lcom/zendesk/android/R$id;->add_views_btn_txt:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    .local v1, addViewsButtonTextView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    sget v6, Lcom/zendesk/android/R$id;->add_views_btn_icon:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    .local v0, addViewsButtonImageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/zendesk/android/dashboard/DashboardActivity$1;

    invoke-direct {v4, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$1;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    .line 208
    .local v4, refreshTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->addViewsButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    .end local v0           #addViewsButtonImageView:Landroid/widget/ImageView;
    .end local v1           #addViewsButtonTextView:Landroid/widget/TextView;
    .end local v4           #refreshTouchListener:Landroid/view/View$OnTouchListener;
    :cond_3
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public loginSuccess()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    new-instance v0, Lcom/zendesk/android/dashboard/NotificationsAdapter;

    invoke-direct {v0, p0}, Lcom/zendesk/android/dashboard/NotificationsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    .line 102
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->setActivityGroups()V

    .line 103
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateBadgeValue()V

    .line 106
    invoke-direct {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->gotoTicket()V

    .line 107
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 462
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 463
    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->logout()V

    .line 466
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 482
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v5, Lcom/zendesk/android/R$menu;->dashboard_menu:I

    invoke-virtual {v0, v5, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 486
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 499
    sget v5, Lcom/zendesk/android/R$id;->dashboard_menu_search:I

    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 500
    sget v5, Lcom/zendesk/android/R$id;->dashboard_menu_config:I

    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->viewsMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 501
    sget v5, Lcom/zendesk/android/R$id;->dashboard_menu_settings:I

    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->settingsMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 502
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    sget v6, Lcom/zendesk/android/R$layout;->collapsable_search_view:I

    invoke-interface {v5, v6}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 504
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    const/16 v6, 0xa

    invoke-interface {v5, v6}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 506
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v5}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 507
    .local v4, view:Landroid/view/View;
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 508
    check-cast v2, Landroid/widget/LinearLayout;

    .line 509
    .local v2, searchContainer:Landroid/widget/LinearLayout;
    sget v5, Lcom/zendesk/android/R$id;->search_edittext:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 510
    .local v3, searchString:Landroid/widget/EditText;
    sget v5, Lcom/zendesk/android/R$id;->search_action_search:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 511
    .local v1, searchActionView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 512
    new-instance v5, Lcom/zendesk/android/dashboard/DashboardActivity$6;

    invoke-direct {v5, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$6;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 524
    new-instance v5, Lcom/zendesk/android/dashboard/DashboardActivity$7;

    invoke-direct {v5, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$7;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v5, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v6, Lcom/zendesk/android/dashboard/DashboardActivity$8;

    invoke-direct {v6, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$8;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    invoke-interface {v5, v6}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 563
    .end local v1           #searchActionView:Landroid/widget/ImageView;
    .end local v2           #searchContainer:Landroid/widget/LinearLayout;
    .end local v3           #searchString:Landroid/widget/EditText;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    const/4 v5, 0x1

    return v5
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 470
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onDestroy()V

    .line 471
    return-void
.end method

.method public onDrawerClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setClickable(Z)V

    .line 361
    sput-boolean v1, Lcom/zendesk/android/dashboard/DashboardActivity;->drawWasOpen:Z

    .line 362
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateBadgeValue()V

    .line 363
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->supportInvalidateOptionsMenu()V

    .line 364
    return-void
.end method

.method public onDrawerOpened()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 344
    sput-boolean v3, Lcom/zendesk/android/dashboard/DashboardActivity;->drawWasOpen:Z

    .line 345
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setClickable(Z)V

    .line 347
    sget v2, Lcom/zendesk/android/R$id;->notification_badge:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 348
    .local v0, badgeTextView:Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;

    move-result-object v1

    .line 350
    .local v1, ns:Lcom/zendesk/android/dashboard/ZendeskNotifications;
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->markRead(Landroid/content/Context;)V

    .line 351
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->supportInvalidateOptionsMenu()V

    .line 353
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 356
    :cond_0
    return-void
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
    .line 619
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->activityStreamAdapter:Lcom/zendesk/android/dashboard/NotificationsAdapter;

    invoke-virtual {v2}, Lcom/zendesk/android/dashboard/NotificationsAdapter;->getActivityGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ActivityGroup;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ActivityGroup;->getTicketId()Ljava/lang/Long;

    move-result-object v1

    .line 620
    .local v1, ticketId:Ljava/lang/Long;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 622
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x4

    .line 401
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 403
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    .line 404
    :cond_0
    if-ne p1, v1, :cond_1

    .line 405
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->clearFileCache()V

    .line 406
    invoke-static {p0}, Lcom/zendesk/android/IntentReceiver;->removeNotificationsObserver(Lcom/zendesk/android/dashboard/NotificationsObserver;)V

    .line 408
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->gotoTicket()V

    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 595
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 596
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->dashboard_menu_config:I

    if-ne v0, v1, :cond_1

    .line 597
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->configureViews(Landroid/view/View;)V

    .line 608
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 598
    :cond_1
    sget v1, Lcom/zendesk/android/R$id;->dashboard_menu_settings:I

    if-ne v0, v1, :cond_2

    .line 599
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->settings()V

    goto :goto_0

    .line 600
    :cond_2
    sget v1, Lcom/zendesk/android/R$id;->menu_refresh:I

    if-ne v0, v1, :cond_3

    .line 601
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->pushReceived()V

    goto :goto_0

    .line 602
    :cond_3
    sget v1, Lcom/zendesk/android/R$id;->dashboard_menu_search:I

    if-ne v0, v1, :cond_0

    .line 603
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 604
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->search(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 568
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->notificationsDraw:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_search:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 570
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_config:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 571
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_settings:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 572
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_search:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 573
    sget v2, Lcom/zendesk/android/R$id;->menu_refresh:I

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 589
    :goto_0
    return v1

    .line 577
    :cond_0
    const/4 v0, 0x1

    .line 578
    .local v0, menuItemsVisible:Z
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v3, :cond_1

    .line 579
    iget-object v3, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->searchMenuItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v3}, Lcom/actionbarsherlock/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 582
    :cond_1
    :goto_1
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_search:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 583
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_config:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 584
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_settings:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 586
    sget v3, Lcom/zendesk/android/R$id;->dashboard_menu_search:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 587
    sget v3, Lcom/zendesk/android/R$id;->menu_refresh:I

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 579
    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onWindowFocusChanged(Z)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->updateWindow()V

    .line 221
    :cond_0
    return-void
.end method

.method public pushReceived()V
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/zendesk/android/dashboard/DashboardActivity$5;

    invoke-direct {v0, p0}, Lcom/zendesk/android/dashboard/DashboardActivity$5;-><init>(Lcom/zendesk/android/dashboard/DashboardActivity;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public search(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 392
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 393
    return-void
.end method

.method public settings()V
    .locals 2

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x7e5

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 628
    return-void
.end method

.method public showBookmarks(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/bookmarks/BookmarksActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method public showNewTicket(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public showRecent(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/recent/RecentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    return-void
.end method

.method public showViews(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/views/ViewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public updateBadgeValue()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->badge:Landroid/widget/TextView;

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getActivityStream()Lcom/zendesk/api/model/ActivityStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ActivityStream;->getActivitiyGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/zendesk/android/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getInstance(Landroid/content/Context;)Lcom/zendesk/android/dashboard/ZendeskNotifications;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/android/dashboard/ZendeskNotifications;->getTotalNotificationCount()I

    move-result v0

    .line 254
    .local v0, count:I
    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->badge:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    if-lez v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->badge:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/dashboard/DashboardActivity;->badge:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
