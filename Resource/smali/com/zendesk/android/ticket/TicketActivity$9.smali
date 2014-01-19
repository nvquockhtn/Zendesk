.class Lcom/zendesk/android/ticket/TicketActivity$9;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Lcom/zendesk/api/http/ProgressMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;
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
    .line 540
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    new-instance v1, Lcom/zendesk/android/ticket/TicketActivity$9$1;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/ticket/TicketActivity$9$1;-><init>(Lcom/zendesk/android/ticket/TicketActivity$9;I)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public setProgressType(Lcom/zendesk/api/http/ProgressMonitor$ProgressType;)V
    .locals 2
    .parameter "progressType"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    new-instance v1, Lcom/zendesk/android/ticket/TicketActivity$9$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/TicketActivity$9$2;-><init>(Lcom/zendesk/android/ticket/TicketActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ticket/TicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method
