.class Lcom/zendesk/android/ticket/EventsAdapter$3;
.super Ljava/lang/Object;
.source "EventsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/EventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/EventsAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/EventsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$3;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v3, :cond_0

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #u:Lcom/zendesk/api/model/users/User;
    check-cast v2, Lcom/zendesk/api/model/users/User;

    .line 341
    .restart local v2       #u:Lcom/zendesk/api/model/users/User;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zendesk/android/ticket/EventsAdapter$3;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/zendesk/android/ticket/EventsAdapter;->access$500(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zendesk/android/user/UserProfileActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "userId"

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 343
    const-string v3, "ticketId"

    iget-object v4, p0, Lcom/zendesk/android/ticket/EventsAdapter$3;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v4}, Lcom/zendesk/android/ticket/EventsAdapter;->access$600(Lcom/zendesk/android/ticket/EventsAdapter;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 344
    const-string v3, "userChangeable"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    iget-object v3, p0, Lcom/zendesk/android/ticket/EventsAdapter$3;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->ticketActivity:Ljava/lang/ref/SoftReference;
    invoke-static {v3}, Lcom/zendesk/android/ticket/EventsAdapter;->access$100(Lcom/zendesk/android/ticket/EventsAdapter;)Ljava/lang/ref/SoftReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x7d7

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    return-void

    .line 338
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 339
    .local v0, c:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getAuthorId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v2

    goto :goto_0
.end method
