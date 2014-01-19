.class public Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "IncidentsTicketsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/zendesk/android/ticket/incidents/IncidentTicketListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 0
    .parameter "context"
    .parameter "ticket"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getItem(I)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemIncidentTickets()Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getIncidentTickets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getItem(I)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    .line 76
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    if-nez p2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->ticketlist_row:I

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_0
    new-instance v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;

    invoke-direct {v0, p0, p2, p3}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;-><init>(Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 81
    .local v0, row:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 83
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_0
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->createdAt:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->statusRequester:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->sectionHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 101
    return-object p2

    .line 87
    :cond_1
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->subject:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, v0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ticket createdAt is Null! ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zendesk/api/http/Request;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getCurrentUser()Lcom/zendesk/api/model/users/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 107
    sget-object v2, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Click: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, p2}, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->getItem(I)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    .line 109
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->context:Landroid/content/Context;

    const-class v3, Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ticketId"

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 51
    return-void
.end method
