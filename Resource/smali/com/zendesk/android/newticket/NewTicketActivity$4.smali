.class Lcom/zendesk/android/newticket/NewTicketActivity$4;
.super Ljava/lang/Object;
.source "NewTicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/newticket/NewTicketActivity;->setupForIndeterminateProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/newticket/NewTicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/newticket/NewTicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/zendesk/android/newticket/NewTicketActivity$4;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$4;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity$4;->this$0:Lcom/zendesk/android/newticket/NewTicketActivity;

    iget-object v0, v0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 437
    return-void
.end method
