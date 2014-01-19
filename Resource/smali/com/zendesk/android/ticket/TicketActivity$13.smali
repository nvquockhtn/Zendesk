.class Lcom/zendesk/android/ticket/TicketActivity$13;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->doPositiveClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 957
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$2400(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    sget v1, Lcom/zendesk/android/R$string;->ticket_delete_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 959
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 961
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 943
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v3}, Lcom/zendesk/android/ticket/TicketActivity;->access$2300(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 944
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/ticket/TicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 945
    .local v0, res:Landroid/content/res/Resources;
    sget v3, Lcom/zendesk/android/R$string;->ticket_delete_toast:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v5}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, toastMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 949
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 950
    .local v1, resultIntent:Landroid/content/Intent;
    const-string v3, "ticketId"

    iget-object v4, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v4}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 951
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/zendesk/android/ticket/TicketActivity;->setResult(ILandroid/content/Intent;)V

    .line 952
    iget-object v3, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/ticket/TicketActivity;->finish()V

    .line 954
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #toastMessage:Ljava/lang/String;
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
    .line 965
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$13;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->delete()V

    .line 966
    return-void
.end method
