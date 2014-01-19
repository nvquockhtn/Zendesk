.class public Lcom/zendesk/android/search/SearchAdapter;
.super Lcom/zendesk/android/adapters/PagingAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/search/SearchAdapter$1;,
        Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/android/adapters/PagingAdapter",
        "<",
        "Lcom/zendesk/api/model/search/SearchResult;",
        "Lcom/zendesk/api/model/search/Search;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/zendesk/api/model/search/Search;Lcom/zendesk/android/ui/ZDFragmentActivity;)V
    .locals 1
    .parameter "listView"
    .parameter "searchResults"
    .parameter "activity"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/zendesk/android/adapters/PagingAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/android/ui/ZDFragmentActivity;Lcom/zendesk/api/model/ZDPagingModelObject;Z)V

    .line 29
    return-void
.end method

.method private showForumEntry(Lcom/zendesk/api/model/search/SearchResult;)V
    .locals 4
    .parameter "sr"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v2}, Lcom/zendesk/api/model/forums/Topic;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 130
    .local v0, id:Ljava/lang/Long;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/search/SearchAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/zendesk/android/forums/ForumEntryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "forumEntryId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/zendesk/android/search/SearchAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v2, v1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private showTicket(Lcom/zendesk/api/model/search/SearchResult;)V
    .locals 4
    .parameter "sr"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 116
    .local v0, id:Ljava/lang/Long;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/search/SearchAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/zendesk/android/search/SearchAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v2, v1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method private showUser(Lcom/zendesk/api/model/search/SearchResult;)V
    .locals 4
    .parameter "sr"

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/users/User;

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v0

    .line 123
    .local v0, id:Ljava/lang/Long;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/search/SearchAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/zendesk/android/user/UserProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "userId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/zendesk/android/search/SearchAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v2, v1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method


# virtual methods
.method public clicked(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zendesk/android/search/SearchAdapter;->currentList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/search/SearchResult;

    invoke-virtual {p0, v0}, Lcom/zendesk/android/search/SearchAdapter;->viewResult(Lcom/zendesk/api/model/search/SearchResult;)V

    .line 84
    return-void
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 34
    iget-boolean v3, p0, Lcom/zendesk/android/search/SearchAdapter;->loading:Z

    if-eqz v3, :cond_0

    if-lez p1, :cond_0

    .line 35
    add-int/lit8 p1, p1, -0x1

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/search/SearchAdapter;->currentList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/search/SearchResult;

    .line 38
    .local v1, sr:Lcom/zendesk/api/model/search/SearchResult;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "EMPTY_VIEW"

    if-eq v3, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "LOADING_VIEW"

    if-ne v3, v4, :cond_2

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/zendesk/android/search/SearchAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/zendesk/android/R$layout;->search_result:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    :cond_2
    new-instance v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;

    invoke-direct {v0, p0, p2, p3}, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;-><init>(Lcom/zendesk/android/search/SearchAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 43
    .local v0, row:Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;
    sget-object v3, Lcom/zendesk/android/search/SearchAdapter$1;->$SwitchMap$com$zendesk$api$model$search$SearchResultType:[I

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getType()Lcom/zendesk/api/model/search/SearchResultType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/search/SearchResultType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 68
    :goto_0
    return-object p2

    .line 45
    :pswitch_0
    iget-object v3, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->type:Landroid/widget/ImageView;

    sget v4, Lcom/zendesk/android/R$drawable;->searchticket:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/Ticket;

    .line 47
    .local v2, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 48
    iget-object v3, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v3, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    .end local v2           #t:Lcom/zendesk/api/model/ticket/Ticket;
    :pswitch_1
    iget-object v3, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->type:Landroid/widget/ImageView;

    sget v4, Lcom/zendesk/android/R$drawable;->searchuser:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v4, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/users/User;

    invoke-virtual {v3}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v3, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->type:Landroid/widget/ImageView;

    sget v4, Lcom/zendesk/android/R$drawable;->searchforum:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v4, v0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/forums/Topic;

    invoke-virtual {v3}, Lcom/zendesk/api/model/forums/Topic;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public viewResult(Lcom/zendesk/api/model/search/SearchResult;)V
    .locals 2
    .parameter "sr"

    .prologue
    .line 88
    sget-object v0, Lcom/zendesk/android/search/SearchAdapter$1;->$SwitchMap$com$zendesk$api$model$search$SearchResultType:[I

    invoke-virtual {p1}, Lcom/zendesk/api/model/search/SearchResult;->getType()Lcom/zendesk/api/model/search/SearchResultType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResultType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/zendesk/android/search/SearchAdapter;->showTicket(Lcom/zendesk/api/model/search/SearchResult;)V

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/zendesk/android/search/SearchAdapter;->showForumEntry(Lcom/zendesk/api/model/search/SearchResult;)V

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/zendesk/android/search/SearchAdapter;->showUser(Lcom/zendesk/api/model/search/SearchResult;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
