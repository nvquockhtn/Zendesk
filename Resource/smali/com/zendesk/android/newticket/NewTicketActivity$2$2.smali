.class Lcom/zendesk/android/newticket/NewTicketActivity$2$2;
.super Ljava/lang/Object;
.source "NewTicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/newticket/NewTicketActivity$2;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/zendesk/android/newticket/NewTicketActivity$2;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iput-object p2, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 384
    const-string v1, "NewTicketActivity"

    const-string v2, "Error sending new ticket"

    iget-object v3, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->val$e:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v1, v1, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    #calls: Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V
    invoke-static {v1}, Lcom/zendesk/android/newticket/NewTicketActivity;->access$000(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    .line 386
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v1, v1, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v1, v1, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v1, v1, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v1, v1, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 388
    sget v1, Lcom/zendesk/android/R$string;->ticket_update_error_title:I

    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 389
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$2;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v1, v1, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 390
    return-void
.end method
