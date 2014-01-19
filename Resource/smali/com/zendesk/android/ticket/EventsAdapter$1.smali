.class Lcom/zendesk/android/ticket/EventsAdapter$1;
.super Ljava/lang/Object;
.source "EventsAdapter.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/EventsAdapter;->loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V
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
.field final synthetic this$0:Lcom/zendesk/android/ticket/EventsAdapter;

.field final synthetic val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

.field final synthetic val$u:Lcom/zendesk/api/model/users/User;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;Lcom/zendesk/api/model/users/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    iput-object p2, p0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iput-object p3, p0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->ticketActivity:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/zendesk/android/ticket/EventsAdapter;->access$100(Lcom/zendesk/android/ticket/EventsAdapter;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/zendesk/android/ticket/EventsAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/EventsAdapter$1$2;-><init>(Lcom/zendesk/android/ticket/EventsAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
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
    .line 226
    .local p1, responseObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/users/User;>;"
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->ticketActivity:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/zendesk/android/ticket/EventsAdapter;->access$100(Lcom/zendesk/android/ticket/EventsAdapter;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/zendesk/android/ticket/EventsAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/EventsAdapter$1$1;-><init>(Lcom/zendesk/android/ticket/EventsAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void
.end method
