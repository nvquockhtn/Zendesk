.class Lcom/zendesk/android/newticket/NewTicketActivity$2$1;
.super Ljava/lang/Object;
.source "NewTicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/newticket/NewTicketActivity$2;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;


# direct methods
.method constructor <init>(Lcom/zendesk/android/newticket/NewTicketActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    #calls: Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V
    invoke-static {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->access$000(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    .line 371
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zendesk/android/R$string;->ticket_created:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 374
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/zendesk/api/model/cache/TicketCache;->newTicketComplete()V

    .line 375
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$2$1;->this$1:Lcom/zendesk/android/newticket/NewTicketActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity$2;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->finish()V

    .line 376
    return-void
.end method
