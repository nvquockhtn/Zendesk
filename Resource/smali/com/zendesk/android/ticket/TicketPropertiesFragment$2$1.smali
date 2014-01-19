.class Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;
.super Ljava/lang/Object;
.source "TicketPropertiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

.field final synthetic val$responseObject:Lcom/zendesk/api/model/ZDModelObject;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->val$responseObject:Lcom/zendesk/api/model/ZDModelObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    #getter for: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->requester:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$100(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->val$responseObject:Lcom/zendesk/api/model/ZDModelObject;

    if-ne v0, v1, :cond_1

    .line 527
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    #calls: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setRequesterText()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$200(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v0, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    #getter for: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->via:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$300(Lcom/zendesk/android/ticket/TicketPropertiesFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->val$responseObject:Lcom/zendesk/api/model/ZDModelObject;

    if-ne v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->this$1:Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;

    iget-object v1, v0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;->val$responseObject:Lcom/zendesk/api/model/ZDModelObject;

    check-cast v0, Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/ticket/TicketPropertiesFragment;->setViaText(Lcom/zendesk/api/model/users/User;)V
    invoke-static {v1, v0}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->access$400(Lcom/zendesk/android/ticket/TicketPropertiesFragment;Lcom/zendesk/api/model/users/User;)V

    goto :goto_0
.end method
