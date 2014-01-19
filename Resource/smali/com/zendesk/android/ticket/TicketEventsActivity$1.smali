.class Lcom/zendesk/android/ticket/TicketEventsActivity$1;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketEventsActivity;->loginSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketEventsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity$1;->this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 72
    const-string v1, "TicketEventsActivity"

    const-string v2, "Error loading ticket events"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity$1;->this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketEventsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zendesk/android/ticket/TicketEventsActivity;->access$100(Lcom/zendesk/android/ticket/TicketEventsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    sget v1, Lcom/zendesk/android/R$string;->connection_error_title:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v1, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 76
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketEventsActivity$1;->this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 77
    return-void
.end method

.method protected responseSuccess()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity$1;->this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;

    #calls: Lcom/zendesk/android/ticket/TicketEventsActivity;->setupAdapter()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->access$000(Lcom/zendesk/android/ticket/TicketEventsActivity;)V

    .line 67
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity$1;->this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketEventsActivity;->loadingFrame:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->access$100(Lcom/zendesk/android/ticket/TicketEventsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
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
    .line 81
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketEventsActivity$1;->this$0:Lcom/zendesk/android/ticket/TicketEventsActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketEventsActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketEventsActivity;->access$200(Lcom/zendesk/android/ticket/TicketEventsActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->refresh()V

    .line 82
    return-void
.end method
