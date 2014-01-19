.class public Lcom/zendesk/android/recent/RecentAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "RecentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/recent/RecentAdapter$1;,
        Lcom/zendesk/android/recent/RecentAdapter$TicketRow;
    }
.end annotation


# static fields
.field private static final EMPTY_VIEW_TAG:Ljava/lang/String; = "EMPTY_VIEW"


# instance fields
.field private tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getRecentTickets()Lcom/zendesk/api/model/views/RecentTickets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/RecentTickets;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    .line 30
    return-void
.end method

.method private applyStatusStyling(Landroid/widget/TextView;Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 3
    .parameter "value"
    .parameter "ticket"

    .prologue
    .line 55
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zendesk/api/model/account/Status;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    .line 57
    .local v0, status:Lcom/zendesk/api/model/account/Status;
    sget-object v1, Lcom/zendesk/android/recent/RecentAdapter$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    sget v1, Lcom/zendesk/android/Colors;->WHITE:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    return-void

    .line 59
    :pswitch_0
    sget v1, Lcom/zendesk/android/R$drawable;->status_new:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 62
    :pswitch_1
    sget v1, Lcom/zendesk/android/R$drawable;->status_open:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 65
    :pswitch_2
    sget v1, Lcom/zendesk/android/R$drawable;->status_pending:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 68
    :pswitch_3
    sget v1, Lcom/zendesk/android/R$drawable;->status_on_hold:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 71
    :pswitch_4
    sget v1, Lcom/zendesk/android/R$drawable;->status_solved:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    :pswitch_5
    sget v1, Lcom/zendesk/android/R$drawable;->status_closed:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 83
    iget-object v6, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 84
    iget-object v6, p0, Lcom/zendesk/android/recent/RecentAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/zendesk/android/R$layout;->empty:I

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    const-string v6, "EMPTY_VIEW"

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    sget v6, Lcom/zendesk/android/R$id;->empty_text:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, emptyMsg:Landroid/widget/TextView;
    sget v6, Lcom/zendesk/android/R$string;->recent_empty:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p2

    .line 118
    .end local v1           #emptyMsg:Landroid/widget/TextView;
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 91
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zendesk/api/model/ticket/Ticket;

    .line 93
    .local v5, ticket:Lcom/zendesk/api/model/ticket/Ticket;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "EMPTY_VIEW"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    :cond_1
    iget-object v6, p0, Lcom/zendesk/android/recent/RecentAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/zendesk/android/R$layout;->ticketlist_row:I

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    :cond_2
    new-instance v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;

    invoke-direct {v4, p0, p2, p3}, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;-><init>(Lcom/zendesk/android/recent/RecentAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 97
    .local v4, row:Lcom/zendesk/android/recent/RecentAdapter$TicketRow;
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    invoke-direct {p0, v6, v5}, Lcom/zendesk/android/recent/RecentAdapter;->applyStatusStyling(Landroid/widget/TextView;Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 100
    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 101
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_1
    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v2

    .line 111
    .local v2, req:Lcom/zendesk/api/model/users/User;
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->createdAt:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const-string v3, ""

    .line 113
    .local v3, requester:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_3
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->statusRequester:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/zendesk/android/recent/RecentAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 118
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 105
    .end local v0           #convertView:Landroid/view/View;
    .end local v2           #req:Lcom/zendesk/api/model/users/User;
    .end local v3           #requester:Ljava/lang/String;
    .restart local p2
    :cond_4
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v6, v4, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->description:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getRecentTickets()Lcom/zendesk/api/model/views/RecentTickets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/views/RecentTickets;->getListItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter;->tickets:Ljava/util/List;

    .line 146
    invoke-super {p0}, Lcom/zendesk/android/adapters/BaseListAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 141
    return-void
.end method
