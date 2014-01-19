.class public Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;
.super Lcom/zendesk/android/adapters/PagingAdapter;
.source "ViewTicketsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$1;,
        Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/android/adapters/PagingAdapter",
        "<",
        "Lcom/zendesk/api/model/ticket/Ticket;",
        "Lcom/zendesk/api/model/views/View;",
        ">;"
    }
.end annotation


# instance fields
.field private view:Lcom/zendesk/api/model/views/View;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/zendesk/api/model/views/View;Lcom/zendesk/android/ui/ZDFragmentActivity;)V
    .locals 1
    .parameter "listView"
    .parameter "view"
    .parameter "activity"

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/zendesk/api/model/views/View;->getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/zendesk/android/adapters/PagingAdapter;-><init>(Landroid/widget/ListView;Lcom/zendesk/android/ui/ZDFragmentActivity;Lcom/zendesk/api/model/ZDPagingModelObject;)V

    .line 30
    iput-object p2, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->view:Lcom/zendesk/api/model/views/View;

    .line 31
    return-void
.end method

.method private applyStatusStyling(Landroid/widget/TextView;Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 3
    .parameter "value"
    .parameter "ticket"

    .prologue
    .line 35
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zendesk/api/model/account/Status;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    .line 37
    .local v0, status:Lcom/zendesk/api/model/account/Status;
    sget-object v1, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$1;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 57
    :goto_0
    sget v1, Lcom/zendesk/android/Colors;->WHITE:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    return-void

    .line 39
    :pswitch_0
    sget v1, Lcom/zendesk/android/R$drawable;->status_new:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 42
    :pswitch_1
    sget v1, Lcom/zendesk/android/R$drawable;->status_open:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 45
    :pswitch_2
    sget v1, Lcom/zendesk/android/R$drawable;->status_pending:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 48
    :pswitch_3
    sget v1, Lcom/zendesk/android/R$drawable;->status_on_hold:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 51
    :pswitch_4
    sget v1, Lcom/zendesk/android/R$drawable;->status_solved:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 54
    :pswitch_5
    sget v1, Lcom/zendesk/android/R$drawable;->status_closed:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 37
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

.method private shouldShowSectionHeader(Lcom/zendesk/api/model/views/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/zendesk/api/model/views/View;->getExecution()Lcom/zendesk/api/model/views/View$ViewExecution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, groupBy:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "submitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "updated_requester"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "updated_assignee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "updated_by_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "solved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "locale_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clicked(Landroid/view/View;I)V
    .locals 4
    .parameter "viewClicked"
    .parameter "pos"

    .prologue
    .line 148
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->currentList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/Ticket;

    .line 149
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 151
    const-string v2, "viewId"

    iget-object v3, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->view:Lcom/zendesk/api/model/views/View;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/android/ui/ZDFragmentActivity;

    invoke-virtual {v2, v0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 63
    iget-object v5, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->currentList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/api/model/ticket/Ticket;

    .line 64
    .local v4, t:Lcom/zendesk/api/model/ticket/Ticket;
    const/4 v3, 0x0

    .line 65
    .local v3, row:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EMPTY_VIEW"

    if-eq v5, v6, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "LOADING_VIEW"

    if-ne v5, v6, :cond_3

    .line 66
    :cond_0
    iget-object v5, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/zendesk/android/R$layout;->ticketlist_row:I

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;

    .end local v3           #row:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;
    invoke-direct {v3, p0, p2, p3}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;-><init>(Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 68
    .restart local v3       #row:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    invoke-direct {p0, v5, v4}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->applyStatusStyling(Landroid/widget/TextView;Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 74
    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 75
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :goto_1
    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 83
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->createdAt:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->statusRequester:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->sectionHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 92
    iget-object v5, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->view:Lcom/zendesk/api/model/views/View;

    invoke-direct {p0, v5}, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->shouldShowSectionHeader(Lcom/zendesk/api/model/views/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, headerString:Ljava/lang/String;
    iget-object v5, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->view:Lcom/zendesk/api/model/views/View;

    invoke-static {v5, v6, v4}, Lcom/zendesk/api/model/strings/HeaderTicketStrings;->getHeaderStringForTicket(Landroid/content/res/Resources;Lcom/zendesk/api/model/views/View;Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    iget-object v5, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/zendesk/android/R$layout;->new_ticket_section_header:I

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    .local v0, header:Landroid/widget/LinearLayout;
    const-string v5, "::"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const-string v5, "::"

    const-string v6, " "

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_1
    iget-object v5, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter;->view:Lcom/zendesk/api/model/views/View;

    invoke-static {v5, v6, v4, v1}, Lcom/zendesk/api/model/strings/ViewsStrings;->getGroupBySectionHeader(Landroid/content/res/Resources;Lcom/zendesk/api/model/views/View;Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, headerTitle:Ljava/lang/String;
    sget v5, Lcom/zendesk/android/R$id;->ticket_subheader_text:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->sectionHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    .end local v0           #header:Landroid/widget/LinearLayout;
    .end local v1           #headerString:Ljava/lang/String;
    .end local v2           #headerTitle:Ljava/lang/String;
    :cond_2
    return-object p2

    .line 70
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #row:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;
    check-cast v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;

    .restart local v3       #row:Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;
    goto/16 :goto_0

    .line 79
    :cond_4
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v5, v3, Lcom/zendesk/android/ticketlist/ViewTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 85
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ticket createdAt is Null! ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/zendesk/api/http/Request;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "],["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
