.class public Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;
.super Lcom/zendesk/android/adapters/PagingAdapter;
.source "ProblemTicketSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;
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


# instance fields
.field private listener:Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/zendesk/api/model/search/Search;Lcom/zendesk/android/ui/ZDFragmentActivity;)V
    .locals 1
    .parameter "listView"
    .parameter "searchResults"
    .parameter "activity"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/zendesk/android/adapters/PagingAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/android/ui/ZDFragmentActivity;Lcom/zendesk/api/model/ZDPagingModelObject;Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public clicked(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->currentList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/search/SearchResult;

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->currentList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/search/SearchResult;

    invoke-virtual {v1}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/Ticket;

    .line 52
    .local v0, ticket:Lcom/zendesk/api/model/ticket/Ticket;
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->listener:Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->listener:Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;

    invoke-interface {v1, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;->problemTicketSelected(Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 56
    .end local v0           #ticket:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_0
    return-void
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 28
    iget-object v4, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->currentList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/search/SearchResult;

    .line 29
    .local v2, sr:Lcom/zendesk/api/model/search/SearchResult;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "EMPTY_VIEW"

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "LOADING_VIEW"

    if-ne v4, v5, :cond_1

    .line 30
    :cond_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->problem_ticket_search_result:I

    invoke-virtual {v4, v5, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 32
    :cond_1
    new-instance v1, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;

    invoke-direct {v1, p0, p2, p3}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 34
    .local v1, row:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;
    invoke-virtual {v2}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v4, :cond_2

    .line 35
    invoke-virtual {v2}, Lcom/zendesk/api/model/search/SearchResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ticket/Ticket;

    .line 36
    .local v3, t:Lcom/zendesk/api/model/ticket/Ticket;
    const/4 v0, 0x0

    .line 37
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 38
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    iget-object v4, v1, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v4, v1, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;->problemNumber:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/zendesk/android/R$string;->problem_ticket_result:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #t:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_2
    return-object p2

    .line 40
    .restart local v0       #body:Ljava/lang/String;
    .restart local v3       #t:Lcom/zendesk/api/model/ticket/Ticket;
    :cond_3
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setProblemTicketSelectedListener(Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->listener:Lcom/zendesk/android/ticket/incidents/ProblemTicketSelectedListener;

    .line 71
    return-void
.end method
