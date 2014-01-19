.class Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;
.super Ljava/lang/Object;
.source "TicketPropertiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 542
    const-string v0, "TicketPropertiesFragment"

    const-string v1, "Load user failed"

    iget-object v2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;->val$e:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->setAsUnknownUser()V

    .line 545
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    #calls: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequesterText()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$200(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)V

    .line 547
    :cond_0
    return-void
.end method
