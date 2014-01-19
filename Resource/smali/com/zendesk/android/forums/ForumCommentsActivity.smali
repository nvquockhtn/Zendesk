.class public Lcom/zendesk/android/forums/ForumCommentsActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "ForumCommentsActivity.java"

# interfaces
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# instance fields
.field private adapter:Lcom/zendesk/android/forums/ForumCommentAdapter;

.field private fe:Lcom/zendesk/api/model/forums/Topic;

.field private listView:Landroid/widget/ListView;

.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/api/model/forums/Topic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/forums/ForumCommentsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->loadComments()V

    return-void
.end method

.method static synthetic access$300(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zendesk/android/forums/ForumCommentsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zendesk/android/forums/ForumCommentsActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->listView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zendesk/android/forums/ForumCommentsActivity;)Lcom/zendesk/android/forums/ForumCommentAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->adapter:Lcom/zendesk/android/forums/ForumCommentAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zendesk/android/forums/ForumCommentsActivity;Lcom/zendesk/android/forums/ForumCommentAdapter;)Lcom/zendesk/android/forums/ForumCommentAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->adapter:Lcom/zendesk/android/forums/ForumCommentAdapter;

    return-object p1
.end method

.method private loadComments()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/zendesk/android/forums/ForumCommentsActivity$2;

    invoke-direct {v0, p0}, Lcom/zendesk/android/forums/ForumCommentsActivity$2;-><init>(Lcom/zendesk/android/forums/ForumCommentsActivity;)V

    .line 114
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    sget v0, Lcom/zendesk/android/R$layout;->activity_forum_comments:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->setContentView(I)V

    .line 34
    sget v0, Lcom/zendesk/android/R$id;->title_bar_text:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->title:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 36
    iget-object v0, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 141
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
    .line 117
    return-void
.end method

.method public loginSuccess()V
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "forumEntryId"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    .local v0, forumEntryId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/ZendeskModel;->getSearch()Lcom/zendesk/api/model/search/Search;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/search/Search;->findForumEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/forums/Topic;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    .line 47
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/zendesk/api/model/forums/Topic;

    invoke-direct {v1, v0}, Lcom/zendesk/api/model/forums/Topic;-><init>(Ljava/lang/Long;)V

    iput-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    .line 50
    new-instance v1, Lcom/zendesk/android/forums/ForumCommentsActivity$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/forums/ForumCommentsActivity$1;-><init>(Lcom/zendesk/android/forums/ForumCommentsActivity;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/Topic;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-direct {p0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->loadComments()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/forums/ForumCommentsActivity;->finish()V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    const-string v0, "forumEntryId"

    iget-object v1, p0, Lcom/zendesk/android/forums/ForumCommentsActivity;->fe:Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v1}, Lcom/zendesk/api/model/forums/Topic;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 83
    return-void
.end method
