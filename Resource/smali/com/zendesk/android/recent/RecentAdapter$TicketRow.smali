.class Lcom/zendesk/android/recent/RecentAdapter$TicketRow;
.super Ljava/lang/Object;
.source "RecentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/recent/RecentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TicketRow"
.end annotation


# instance fields
.field createdAt:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field statusRequester:Landroid/widget/TextView;

.field subject:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zendesk/android/recent/RecentAdapter;

.field ticketId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/recent/RecentAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->this$0:Lcom/zendesk/android/recent/RecentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_ticket_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->ticketId:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->createdAt:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_subject:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->subject:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_status_requester:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->statusRequester:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/zendesk/android/R$id;->ticketlist_description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/recent/RecentAdapter$TicketRow;->description:Landroid/widget/TextView;

    .line 135
    return-void
.end method
