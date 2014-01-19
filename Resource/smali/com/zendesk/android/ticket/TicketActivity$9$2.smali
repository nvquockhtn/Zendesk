.class Lcom/zendesk/android/ticket/TicketActivity$9$2;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity$9;->setProgressType(Lcom/zendesk/api/http/ProgressMonitor$ProgressType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/TicketActivity$9;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$9$2;->this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$9$2;->this$1:Lcom/zendesk/android/ticket/TicketActivity$9;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketActivity$9;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->setupForIndeterminateProgress()V

    .line 558
    return-void
.end method
