.class public Lcom/zendesk/api/model/strings/ViewsStrings;
.super Ljava/lang/Object;
.source "ViewsStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupBySectionHeader(Landroid/content/res/Resources;Lcom/zendesk/api/model/views/View;Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "resources"
    .parameter "view"
    .parameter "t"
    .parameter "headerValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    invoke-virtual {p1}, Lcom/zendesk/api/model/views/View;->getExecution()Lcom/zendesk/api/model/views/View$ViewExecution;

    move-result-object v0

    .line 17
    .local v0, execution:Lcom/zendesk/api/model/views/View$ViewExecution;
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    sget v3, Lcom/zendesk/android/R$string;->description:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    :goto_0
    return-object v3

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20
    sget v3, Lcom/zendesk/android/R$string;->status:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22
    sget v3, Lcom/zendesk/android/R$string;->type:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 24
    sget v3, Lcom/zendesk/android/R$string;->priority:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "requester"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 26
    sget v3, Lcom/zendesk/android/R$string;->requester:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28
    sget v3, Lcom/zendesk/android/R$string;->group:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 29
    :cond_5
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "updated"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 30
    sget v3, Lcom/zendesk/android/R$string;->updated:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 31
    :cond_6
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "assignee"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 32
    sget v3, Lcom/zendesk/android/R$string;->assignee:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "created"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 34
    sget v3, Lcom/zendesk/android/R$string;->created:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 35
    :cond_8
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "requested"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 36
    sget v3, Lcom/zendesk/android/R$string;->requested:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 37
    :cond_9
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "satisfaction_score"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 38
    sget v3, Lcom/zendesk/android/R$string;->satisfaction_score:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 39
    :cond_a
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "organization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 40
    sget v3, Lcom/zendesk/android/R$string;->organization:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 42
    :cond_b
    const/4 v2, 0x0

    .line 44
    .local v2, tfid:Ljava/lang/Long;
    :try_start_0
    invoke-virtual {v0}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 45
    invoke-virtual {p2, v2}, Lcom/zendesk/api/model/ticket/Ticket;->getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    .line 46
    .local v1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    .line 49
    .end local v1           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 55
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
