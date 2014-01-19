.class Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;
.super Ljava/lang/Object;
.source "IncidentsTicketsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TicketRow"
.end annotation


# instance fields
.field createdAt:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field sectionHeaderContainer:Landroid/widget/LinearLayout;

.field statusRequester:Landroid/widget/TextView;

.field subject:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

.field ticketId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->this$0:Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_ticket_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->createdAt:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_subject:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->subject:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_status_requester:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->statusRequester:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->description:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_section_header_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/IncidentsTicketsAdapter$TicketRow;->sectionHeaderContainer:Landroid/widget/LinearLayout;

    .line 46
    return-void
.end method
