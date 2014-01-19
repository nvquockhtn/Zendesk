.class Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;
.super Landroid/widget/Filter;
.source "EditAssigneeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter "constraint"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v1, filterResults:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_2

    .line 56
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, queryString:Ljava/lang/String;
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;
    invoke-static {v5}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 58
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->group:Lcom/zendesk/api/model/users/Group;
    invoke-static {v5}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->access$100(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Lcom/zendesk/api/model/users/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/users/Group;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/api/model/users/User;

    .line 59
    .local v4, u:Lcom/zendesk/api/model/users/User;
    invoke-virtual {v4}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;
    invoke-static {v5}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #queryString:Ljava/lang/String;
    .end local v4           #u:Lcom/zendesk/api/model/users/User;
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;
    invoke-static {v5}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 68
    iget-object v5, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    #getter for: Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->users:Ljava/util/List;
    invoke-static {v5}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v1, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :cond_2
    monitor-exit p0

    return-object v1

    .line 52
    .end local v1           #filterResults:Landroid/widget/Filter$FilterResults;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .parameter "contraint"
    .parameter "results"

    .prologue
    .line 75
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->notifyDataSetChanged()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/EditAssigneeAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
