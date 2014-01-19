.class Lcom/zendesk/android/ticket/TicketActivity$11;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->submit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;

.field final synthetic val$pm:Lcom/zendesk/api/http/ProgressMonitor;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->val$pm:Lcom/zendesk/api/http/ProgressMonitor;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 628
    const-string v1, "TicketActivity"

    const-string v2, "Error uploading attachment to ticket"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$2000(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 631
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v1, v1, Lcom/zendesk/android/ticket/TicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v1, v1, Lcom/zendesk/android/ticket/TicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 633
    sget v1, Lcom/zendesk/android/R$string;->ticket_update_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 634
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 636
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1800(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$500(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 612
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 613
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 614
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->refreshIncidentsLinkedToTicket()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1900(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 615
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/account/Status;->SOLVED:Lcom/zendesk/api/model/account/Status;

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zendesk/android/R$string;->ticket_solved:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 624
    :cond_0
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zendesk/android/R$string;->ticket_updated:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$11;->val$pm:Lcom/zendesk/api/http/ProgressMonitor;

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/ticket/Ticket;->commit(Lcom/zendesk/api/http/ProgressMonitor;)V

    .line 641
    return-void
.end method
