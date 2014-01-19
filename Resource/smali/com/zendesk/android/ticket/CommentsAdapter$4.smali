.class Lcom/zendesk/android/ticket/CommentsAdapter$4;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$4;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    if-eqz v3, :cond_2

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    .line 421
    .local v0, c:Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getAuthorId()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v2

    .line 426
    .end local v0           #c:Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 427
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zendesk/android/ticket/CommentsAdapter$4;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$800(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/zendesk/android/user/UserProfileActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "userId"

    invoke-virtual {v2}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 429
    const-string v3, "ticketId"

    iget-object v4, p0, Lcom/zendesk/android/ticket/CommentsAdapter$4;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v4}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$900(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 430
    const-string v3, "userChangeable"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    iget-object v3, p0, Lcom/zendesk/android/ticket/CommentsAdapter$4;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;
    invoke-static {v3}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$1000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketCommentsFragment;

    move-result-object v3

    const/16 v4, 0x7d7

    invoke-virtual {v3, v1, v4}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 433
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 422
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zendesk/api/model/users/User;

    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #u:Lcom/zendesk/api/model/users/User;
    check-cast v2, Lcom/zendesk/api/model/users/User;

    .restart local v2       #u:Lcom/zendesk/api/model/users/User;
    goto :goto_0
.end method
