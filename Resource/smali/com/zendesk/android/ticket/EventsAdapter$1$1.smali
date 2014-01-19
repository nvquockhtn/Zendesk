.class Lcom/zendesk/android/ticket/EventsAdapter$1$1;
.super Ljava/lang/Object;
.source "EventsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/EventsAdapter$1;->responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/EventsAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v1, v1, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->author:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v1, v1, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$1;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v1, v1, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    iget-object v2, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$1;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v2, v2, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    #calls: Lcom/zendesk/android/ticket/EventsAdapter;->setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V
    invoke-static {v0, v1, v2}, Lcom/zendesk/android/ticket/EventsAdapter;->access$000(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;)V

    .line 233
    :cond_0
    return-void
.end method
