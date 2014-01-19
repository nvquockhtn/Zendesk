.class Lcom/zendesk/android/ticket/TicketActivity$9$1;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity$9;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity$9;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$9$1;->this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

    iput p2, p0, Lcom/zendesk/android/ticket/TicketActivity$9$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$9$1;->this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1600(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$9$1;->this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$9$1;->this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/zendesk/android/ticket/TicketActivity$9$1;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 549
    :cond_0
    return-void
.end method
