.class public Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "ProblemTicketViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$7;
    }
.end annotation


# instance fields
.field private loadingFrame:Landroid/widget/RelativeLayout;

.field private problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

.field private problemTicketId:Ljava/lang/Long;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketDescriptionTextView:Landroid/widget/TextView;

.field private ticketId:Ljava/lang/Long;

.field private ticketIncidentCountTextView:Landroid/widget/TextView;

.field private ticketIncidentRow:Landroid/widget/LinearLayout;

.field private ticketProblemDetailRow:Landroid/widget/LinearLayout;

.field private ticketStatusTextView:Landroid/widget/TextView;

.field private ticketTitleTextView:Landroid/widget/TextView;

.field private unlinkTicketButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->unlinkTicketFromProblem()V

    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->destroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadView()V

    return-void
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->hideLoading()V

    return-void
.end method

.method static synthetic access$500(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private applyStatusStyling(Landroid/widget/TextView;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatusField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zendesk/api/model/account/Status;->get(Ljava/lang/String;)Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    .line 215
    .local v0, status:Lcom/zendesk/api/model/account/Status;
    sget-object v1, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$7;->$SwitchMap$com$zendesk$api$model$account$Status:[I

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zendesk/api/model/strings/StatusStrings;->getString(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    sget v1, Lcom/zendesk/android/Colors;->WHITE:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    return-void

    .line 217
    :pswitch_0
    sget v1, Lcom/zendesk/android/R$drawable;->status_new:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 220
    :pswitch_1
    sget v1, Lcom/zendesk/android/R$drawable;->status_open:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 223
    :pswitch_2
    sget v1, Lcom/zendesk/android/R$drawable;->status_pending:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 226
    :pswitch_3
    sget v1, Lcom/zendesk/android/R$drawable;->status_on_hold:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 229
    :pswitch_4
    sget v1, Lcom/zendesk/android/R$drawable;->status_solved:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 232
    :pswitch_5
    sget v1, Lcom/zendesk/android/R$drawable;->status_closed:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 215
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

.method private hideLoading()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$6;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$6;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private loadView()V
    .locals 5

    .prologue
    .line 106
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketStatusTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->applyStatusStyling(Landroid/widget/TextView;)V

    .line 107
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v1, Lcom/zendesk/android/R$string;->number_of_tickets_linked_to_incidents:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getIncidentTickets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, incidentNumber:Ljava/lang/String;
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketIncidentCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->unlinkTicketButton:Landroid/widget/Button;

    new-instance v2, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$1;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$1;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketIncidentRow:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$2;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$2;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketProblemDetailRow:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;

    invoke-direct {v2, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$3;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private refreshView()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->showLoading()V

    .line 144
    new-instance v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    .line 166
    return-void
.end method

.method private showLoading()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$5;-><init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method private unlinkTicketFromProblem()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getProblemLinkedToIncidentTicketTicketField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 192
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->setResult(I)V

    .line 193
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->finish()V

    .line 194
    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    sget v1, Lcom/zendesk/android/R$layout;->activity_problem_ticket:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->setContentView(I)V

    .line 48
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->displayBackUp(Z)V

    .line 50
    if-eqz p1, :cond_3

    const-string v1, "ticketId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "problemTicketId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    const-string v1, "ticketId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketId:Ljava/lang/Long;

    .line 53
    const-string v1, "problemTicketId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->finish()V

    .line 66
    :cond_2
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_ticket_status:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketStatusTextView:Landroid/widget/TextView;

    .line 67
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_title:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketTitleTextView:Landroid/widget/TextView;

    .line 68
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_description:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketDescriptionTextView:Landroid/widget/TextView;

    .line 69
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_linked_incidents:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketIncidentCountTextView:Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_unlink_btn:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->unlinkTicketButton:Landroid/widget/Button;

    .line 71
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_incidents_row:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketIncidentRow:Landroid/widget/LinearLayout;

    .line 72
    sget v1, Lcom/zendesk/android/R$id;->problem_ticket_detail_section:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketProblemDetailRow:Landroid/widget/LinearLayout;

    .line 73
    sget v1, Lcom/zendesk/android/R$id;->loading_frame:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadingFrame:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    return-void

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "ticketId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "problemTicketId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "ticketId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketId:Ljava/lang/Long;

    .line 59
    const-string v1, "problemTicketId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;

    goto/16 :goto_0
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->showLoading()V

    .line 81
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->hideLoading()V

    .line 102
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->finish()V

    .line 103
    return-void
.end method

.method public loginSuccess()V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->hideLoading()V

    .line 86
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicketId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 89
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticketId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 91
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->isFullRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->requireModelRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadView()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->refreshView()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 199
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 201
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->finish()V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
