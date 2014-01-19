.class public Lcom/zendesk/api/model/strings/HeaderTicketStrings;
.super Ljava/lang/Object;
.source "HeaderTicketStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaderStringForTicket(Landroid/content/res/Resources;Lcom/zendesk/api/model/views/View;Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;
    .locals 4
    .parameter "resources"
    .parameter "view"
    .parameter "t"

    .prologue
    .line 13
    invoke-virtual {p1, p2}, Lcom/zendesk/api/model/views/View;->getTicketSectionHeader(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, apiString:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/zendesk/api/model/views/View;->getExecution()Lcom/zendesk/api/model/views/View$ViewExecution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-static {p0, v0}, Lcom/zendesk/api/model/strings/StatusStrings;->getStringFromApiValue(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    return-object v1

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/zendesk/api/model/views/View;->getExecution()Lcom/zendesk/api/model/views/View$ViewExecution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 20
    invoke-static {p0, v0}, Lcom/zendesk/api/model/strings/TicketTypeStrings;->getStringFromApiValue(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/zendesk/api/model/views/View;->getExecution()Lcom/zendesk/api/model/views/View$ViewExecution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "satisfaction_score"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    const-string v2, "HeaderTicketStrings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0, v0}, Lcom/zendesk/api/model/strings/SatisfactionScoreStrings;->getStringFromApiValue(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, satRating:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move-object v1, v0

    .line 28
    goto :goto_0

    .line 31
    .end local v1           #satRating:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, p2}, Lcom/zendesk/api/model/views/View;->getTicketSectionHeader(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
