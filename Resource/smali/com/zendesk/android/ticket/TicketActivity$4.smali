.class Lcom/zendesk/android/ticket/TicketActivity$4;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->refreshTicket()V
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
    .line 255
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->handleRequestError(Ljava/lang/Throwable;)V
    invoke-static {v0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->access$700(Lcom/zendesk/android/ticket/TicketActivity;Ljava/lang/Throwable;)V

    .line 271
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 272
    return-void
.end method

.method protected responseSuccess()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$200(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->setBookmarkIconStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$300(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 261
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v2}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->hideLoading()V

    .line 263
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->loadViewIfFinished()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$500(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 264
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #calls: Lcom/zendesk/android/ticket/TicketActivity;->checkEditStatus()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$600(Lcom/zendesk/android/ticket/TicketActivity;)V

    .line 266
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
    .line 276
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$4;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$400(Lcom/zendesk/android/ticket/TicketActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/Ticket;->refresh()V

    .line 277
    return-void
.end method
