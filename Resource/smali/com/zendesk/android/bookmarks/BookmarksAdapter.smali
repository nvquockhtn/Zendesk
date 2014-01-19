.class public Lcom/zendesk/android/bookmarks/BookmarksAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "BookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;
    }
.end annotation


# static fields
.field private static final EMPTY_VIEW_TAG:Ljava/lang/String; = "EMPTY_VIEW"


# instance fields
.field private bookmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/views/Bookmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmarks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 51
    iget-object v5, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/zendesk/android/R$layout;->empty:I

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    const-string v5, "EMPTY_VIEW"

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    sget v5, Lcom/zendesk/android/R$id;->empty_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, emptyMsg:Landroid/widget/TextView;
    sget v5, Lcom/zendesk/android/R$string;->bookmarks_empty:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    .line 88
    .end local v2           #emptyMsg:Landroid/widget/TextView;
    .end local p2
    .local v1, convertView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 59
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/views/Bookmark;

    .line 61
    .local v0, b:Lcom/zendesk/api/model/views/Bookmark;
    const/4 v4, 0x0

    .line 62
    .local v4, row:Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EMPTY_VIEW"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/zendesk/android/R$layout;->ticketlist_row:I

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;

    .end local v4           #row:Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;
    invoke-direct {v4, p0, p2, p3}, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;-><init>(Lcom/zendesk/android/bookmarks/BookmarksAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 65
    .restart local v4       #row:Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_1
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 73
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_2
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->createdAt:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const-string v3, ""

    .line 83
    .local v3, requester:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_2
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->statusRequester:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    .line 88
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 67
    .end local v1           #convertView:Landroid/view/View;
    .end local v3           #requester:Ljava/lang/String;
    .restart local p2
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #row:Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;
    check-cast v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;

    .restart local v4       #row:Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;
    goto/16 :goto_1

    .line 77
    :cond_4
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmark;->getTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, v4, Lcom/zendesk/android/bookmarks/BookmarksAdapter$TicketRow;->description:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getBookmarks()Lcom/zendesk/api/model/views/Bookmarks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/Bookmarks;->getBookmarks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/bookmarks/BookmarksAdapter;->bookmarks:Ljava/util/List;

    .line 116
    invoke-super {p0}, Lcom/zendesk/android/adapters/BaseListAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 111
    return-void
.end method
