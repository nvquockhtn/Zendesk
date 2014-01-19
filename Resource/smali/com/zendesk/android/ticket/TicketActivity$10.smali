.class Lcom/zendesk/android/ticket/TicketActivity$10;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->setupForIndeterminateProgress()V
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
    .line 569
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$10;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$10;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    #getter for: Lcom/zendesk/android/ticket/TicketActivity;->destroyed:Z
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketActivity;->access$1700(Lcom/zendesk/android/ticket/TicketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$10;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$10;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$10;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 576
    :cond_0
    return-void
.end method
