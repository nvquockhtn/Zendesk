.class Lcom/zendesk/android/ticket/EventsAdapter$1$2;
.super Ljava/lang/Object;
.source "EventsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/EventsAdapter$1;->responseFailed(Ljava/lang/Throwable;)V
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
    .line 239
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->setAsUnknownUser()V

    .line 242
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->author:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v1, v1, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    invoke-virtual {v1}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$header:Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;

    iget-object v0, v0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v1, v1, Lcom/zendesk/android/ticket/EventsAdapter$1;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    iget-object v2, p0, Lcom/zendesk/android/ticket/EventsAdapter$1$2;->this$1:Lcom/zendesk/android/ticket/EventsAdapter$1;

    iget-object v2, v2, Lcom/zendesk/android/ticket/EventsAdapter$1;->val$u:Lcom/zendesk/api/model/users/User;

    #calls: Lcom/zendesk/android/ticket/EventsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    invoke-static {v1, v2}, Lcom/zendesk/android/ticket/EventsAdapter;->access$200(Lcom/zendesk/android/ticket/EventsAdapter;Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    return-void
.end method
