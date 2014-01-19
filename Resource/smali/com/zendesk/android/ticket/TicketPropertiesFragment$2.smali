.class Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;
.super Ljava/lang/Object;
.source "TicketPropertiesFragment.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketPropertiesFragment;->loadUser(Lcom/zendesk/api/model/users/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/users/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    iput-object p2, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 538
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 539
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 540
    new-instance v1, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$2;-><init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 550
    :cond_0
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/users/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/users/User;>;"
    iget-object v1, p0, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;->this$0:Lcom/zendesk/android/ticket/TicketPropertiesFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 522
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 523
    new-instance v1, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/zendesk/android/ticket/TicketPropertiesFragment$2$1;-><init>(Lcom/zendesk/android/ticket/TicketPropertiesFragment$2;Lcom/zendesk/api/model/ZDModelObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 535
    :cond_0
    return-void
.end method
