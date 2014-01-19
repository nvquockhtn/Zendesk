.class Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ProblemTicketViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #calls: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->hideLoading()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$400(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    .line 158
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$200(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #calls: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadView()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$300(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    .line 150
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #calls: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->hideLoading()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$400(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$4;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->problemTicket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$500(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->refresh()V

    .line 163
    return-void
.end method
