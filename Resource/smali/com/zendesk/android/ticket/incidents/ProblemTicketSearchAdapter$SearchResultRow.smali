.class Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;
.super Ljava/lang/Object;
.source "ProblemTicketSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultRow"
.end annotation


# instance fields
.field problemNumber:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget v0, Lcom/zendesk/android/R$id;->problem_ticket_search_result_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/zendesk/android/R$id;->problem_ticket_search_result_ticket_number:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter$SearchResultRow;->problemNumber:Landroid/widget/TextView;

    .line 66
    return-void
.end method
