.class public Lcom/zendesk/api/model/strings/ActivityGroupStrings;
.super Ljava/lang/Object;
.source "ActivityGroupStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssignString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ActivityGroup;)Ljava/lang/String;
    .locals 4
    .parameter "resources"
    .parameter "activityGroup"

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/zendesk/api/model/ActivityGroup;->getLastAssigned()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, lastAssign:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    sget v1, Lcom/zendesk/android/R$string;->activity_assigned_string:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCommentString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ActivityGroup;)Ljava/lang/String;
    .locals 9
    .parameter "resources"
    .parameter "activityGroup"

    .prologue
    const/4 v7, 0x1

    .line 20
    invoke-virtual {p1}, Lcom/zendesk/api/model/ActivityGroup;->getCommenters()Ljava/util/List;

    move-result-object v1

    .line 21
    .local v1, commenters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 24
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 25
    sub-int v5, v2, v3

    if-ne v5, v7, :cond_0

    .line 26
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 31
    :cond_1
    sget v5, Lcom/zendesk/android/R$string;->activity_comment:I

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getPriorityString(Landroid/content/res/Resources;Lcom/zendesk/api/model/ActivityGroup;)Ljava/lang/String;
    .locals 2
    .parameter "resources"
    .parameter "activityGroup"

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/zendesk/api/model/ActivityGroup;->hasPriorityChanged()Z

    move-result v0

    .line 60
    .local v0, priorityChanged:Z
    if-eqz v0, :cond_0

    .line 61
    sget v1, Lcom/zendesk/android/R$string;->activity_priority_string:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
