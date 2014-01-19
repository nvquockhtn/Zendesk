.class Lcom/zendesk/android/ticket/TicketActivity$8;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->applyMacro(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;

.field final synthetic val$mr:Lcom/zendesk/api/model/macros/MacroResult;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;Lcom/zendesk/api/model/macros/MacroResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->val$mr:Lcom/zendesk/api/model/macros/MacroResult;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 491
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$1500(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 493
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 494
    sget v1, Lcom/zendesk/android/R$string;->ticket_update_macro_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 495
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/TicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 497
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :cond_0
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1400(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$500(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 483
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 484
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 486
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
    .line 501
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$8;->val$mr:Lcom/zendesk/api/model/macros/MacroResult;

    invoke-virtual {v0}, Lcom/zendesk/api/model/macros/MacroResult;->refresh()V

    .line 502
    return-void
.end method
