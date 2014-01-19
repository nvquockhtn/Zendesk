.class public Lcom/zendesk/api/model/views/View;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/views/View$ViewTickets;,
        Lcom/zendesk/api/model/views/View$ViewExecutionField;,
        Lcom/zendesk/api/model/views/View$ViewExecution;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/views/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final GROUP_BY_ASSIGNEE:Ljava/lang/String; = "assignee"

.field public static final GROUP_BY_CREATED:Ljava/lang/String; = "created"

.field public static final GROUP_BY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final GROUP_BY_GROUP:Ljava/lang/String; = "group"

.field public static final GROUP_BY_ORGANIZATION:Ljava/lang/String; = "organization"

.field public static final GROUP_BY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final GROUP_BY_REQUESTED:Ljava/lang/String; = "requested"

.field public static final GROUP_BY_REQUESTER:Ljava/lang/String; = "requester"

.field public static final GROUP_BY_SATISFACTION_SCORE:Ljava/lang/String; = "satisfaction_score"

.field public static final GROUP_BY_STATUS:Ljava/lang/String; = "status"

.field public static final GROUP_BY_TYPE:Ljava/lang/String; = "type"

.field public static final GROUP_BY_UPDATED:Ljava/lang/String; = "updated"

.field static final KEY_COUNT:Ljava/lang/String; = "count"

.field static final KEY_CREATED:Ljava/lang/String; = "created"

.field static final KEY_EXECUTION:Ljava/lang/String; = "execution"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_IS_ACTIVE:Ljava/lang/String; = "active"

.field static final KEY_OUTPUT:Ljava/lang/String; = "output"

.field static final KEY_ROWS:Ljava/lang/String; = "rows"

.field static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final KEY_UPDATED:Ljava/lang/String; = "updated"

.field private static final VIEW_REFRESH_INTERVAL:J = 0x493e0L


# instance fields
.field private active:Ljava/lang/Boolean;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "active"
    .end annotation
.end field

.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field

.field private execution:Lcom/zendesk/api/model/views/View$ViewExecution;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "execution"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "id"
    .end annotation
.end field

.field private lastHeaderValue:Ljava/lang/String;

.field private sectionHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "title"
    .end annotation
.end field

.field private viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "baseModel"
    .parameter "json"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 112
    new-instance v0, Lcom/zendesk/api/model/views/View$ViewTickets;

    invoke-direct {v0, p0}, Lcom/zendesk/api/model/views/View$ViewTickets;-><init>(Lcom/zendesk/api/model/views/View;)V

    iput-object v0, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    .line 123
    iput-object p1, p0, Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 124
    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/views/View;->setRefreshInterval(J)V

    .line 125
    invoke-direct {p0, p2}, Lcom/zendesk/api/model/views/View;->parseJSONObject(Lorg/json/JSONObject;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/api/model/views/View;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zendesk/api/model/views/View;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/views/View;)Lcom/zendesk/api/model/BaseModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/api/model/views/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/views/View;->generateSectionHeaders(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zendesk/api/model/views/View;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;

    return-object v0
.end method

.method private generateSectionHeaders(I)V
    .locals 5
    .parameter "startIndex"

    .prologue
    .line 656
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getCurrentPage()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 657
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 658
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zendesk/api/model/views/View;->lastHeaderValue:Ljava/lang/String;

    .line 661
    :cond_0
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewExecution;->shouldGroup()Z

    move-result v3

    if-nez v3, :cond_2

    .line 679
    :cond_1
    return-void

    .line 663
    :cond_2
    move v1, p1

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getSourceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 664
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getSourceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/Ticket;

    .line 665
    .local v2, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-direct {p0, v2}, Lcom/zendesk/api/model/views/View;->getValForSectionHeader(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, headerValue:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 668
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->lastHeaderValue:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 669
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iput-object v0, p0, Lcom/zendesk/api/model/views/View;->lastHeaderValue:Ljava/lang/String;

    .line 663
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    :cond_4
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->lastHeaderValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 673
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iput-object v0, p0, Lcom/zendesk/api/model/views/View;->lastHeaderValue:Ljava/lang/String;

    goto :goto_1
.end method

.method private getValForSectionHeader(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;
    .locals 8
    .parameter "t"

    .prologue
    .line 693
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_0
    :goto_0
    return-object v1

    .line 695
    :cond_1
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 696
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/Status;->getApiVal()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 697
    :cond_2
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 698
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketType()Lcom/zendesk/api/model/account/TicketType;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 699
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketType()Lcom/zendesk/api/model/account/TicketType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    .line 772
    :cond_3
    :goto_1
    const-string v1, "-"

    goto :goto_0

    .line 701
    :cond_4
    const-string v1, "-"

    goto :goto_0

    .line 703
    :cond_5
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "priority"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 704
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getPriority()Lcom/zendesk/api/model/account/Priority;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 705
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getPriority()Lcom/zendesk/api/model/account/Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/Priority;->getApiVal()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 707
    :cond_6
    const-string v1, "-"

    goto :goto_0

    .line 709
    :cond_7
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "requester"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 710
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getRequester()Lcom/zendesk/api/model/users/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 711
    :cond_8
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 712
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getGroup()Lcom/zendesk/api/model/users/Group;

    move-result-object v0

    .line 713
    .local v0, g:Lcom/zendesk/api/model/users/Group;
    if-eqz v0, :cond_9

    .line 714
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/Group;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 716
    :cond_9
    const-string v1, "-"

    goto/16 :goto_0

    .line 718
    .end local v0           #g:Lcom/zendesk/api/model/users/Group;
    :cond_a
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "updated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 719
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 720
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getUpdatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 722
    :cond_b
    const-string v1, "-"

    goto/16 :goto_0

    .line 724
    :cond_c
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "assignee"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 725
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getAssignee()Lcom/zendesk/api/model/users/User;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 726
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getAssignee()Lcom/zendesk/api/model/users/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 728
    :cond_d
    const-string v1, "-"

    goto/16 :goto_0

    .line 730
    :cond_e
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "created"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 731
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 732
    :cond_f
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "requested"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 733
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 734
    :cond_10
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "satisfaction_score"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 735
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/SatisfactionRating;->getScore()Lcom/zendesk/api/model/ticket/SatisfactionScore;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 736
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/SatisfactionRating;->getScore()Lcom/zendesk/api/model/ticket/SatisfactionScore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/SatisfactionScore;->getApiVal()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 737
    :cond_11
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/SatisfactionRating;->getStatisfactionScore()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 738
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getSatisfactionRating()Lcom/zendesk/api/model/ticket/SatisfactionRating;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/SatisfactionRating;->getStatisfactionScore()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 740
    :cond_12
    const-string v1, "-"

    goto/16 :goto_0

    .line 742
    :cond_13
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    const-string v5, "organization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 743
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getOrganizationId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_14

    .line 744
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-interface {v4}, Lcom/zendesk/api/model/BaseModel;->getOrganizations()Lcom/zendesk/api/model/users/Organizations;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/Ticket;->getOrganizationId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/zendesk/api/model/users/Organizations;->getOrganizationById(J)Lcom/zendesk/api/model/users/Organization;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/users/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 746
    :cond_14
    const-string v1, "-"

    goto/16 :goto_0

    .line 751
    :cond_15
    const/4 v3, 0x0

    .line 753
    .local v3, tfid:Ljava/lang/Long;
    :try_start_0
    iget-object v4, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v4}, Lcom/zendesk/api/model/views/View$ViewExecution;->getGroupBy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 754
    invoke-virtual {p1, v3}, Lcom/zendesk/api/model/ticket/Ticket;->getCustomTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    .line 755
    .local v2, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 756
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 757
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 758
    .local v1, temp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    const-string v1, "-"

    goto/16 :goto_0

    .line 760
    .end local v1           #temp:Ljava/lang/String;
    :cond_16
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 763
    :cond_17
    const-string v1, "-"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 767
    .end local v2           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private parseJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 141
    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonStringVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/views/View;->title:Ljava/lang/String;

    .line 142
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonLongVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;

    .line 143
    const-string v1, "active"

    invoke-static {p1, v1}, Lcom/zendesk/api/model/ZDModelObject;->jsonBoolVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/zendesk/api/model/views/View;->active:Ljava/lang/Boolean;

    .line 145
    const-string v1, "execution"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    .local v0, exec:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-direct {v1, p0, v0}, Lcom/zendesk/api/model/views/View$ViewExecution;-><init>(Lcom/zendesk/api/model/views/View;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public checkTicketMemberOfView(Ljava/lang/Long;)V
    .locals 2
    .parameter "ticketId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/zendesk/api/requester/TicketViewMembershipRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;

    invoke-direct {v0, p1, v1}, Lcom/zendesk/api/requester/TicketViewMembershipRequester;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    new-instance v1, Lcom/zendesk/api/model/views/View$1;

    invoke-direct {v1, p0}, Lcom/zendesk/api/model/views/View$1;-><init>(Lcom/zendesk/api/model/views/View;)V

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/api/model/views/View;->execute(Lcom/zendesk/api/http/Request;Lcom/zendesk/api/model/ZDModelObject$ResponseParser;)V

    .line 181
    return-void
.end method

.method public generateSectionHeaderValues()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v6, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    invoke-virtual {v6}, Lcom/zendesk/api/model/views/View$ViewExecution;->shouldGroup()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    .line 651
    :cond_0
    return-object v1

    .line 631
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 632
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Lcom/zendesk/api/model/ticket/Ticket;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 633
    .local v3, lhv:Ljava/lang/String;
    iget-object v6, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    invoke-virtual {v6}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v5

    .line 635
    .local v5, tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zendesk/api/model/ticket/Ticket;

    .line 637
    .local v4, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-direct {p0, v4}, Lcom/zendesk/api/model/views/View;->getValForSectionHeader(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, headerValue:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 640
    if-nez v3, :cond_3

    .line 641
    iget-object v6, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iput-object v0, p0, Lcom/zendesk/api/model/views/View;->lastHeaderValue:Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 645
    iget-object v6, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    move-object v3, v0

    goto :goto_0
.end method

.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/zendesk/api/requester/ViewRequester;

    iget-object v1, p0, Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/zendesk/api/requester/ViewRequester;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExecution()Lcom/zendesk/api/model/views/View$ViewExecution;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->execution:Lcom/zendesk/api/model/views/View$ViewExecution;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 4
    .parameter "id"

    .prologue
    .line 159
    iget-object v3, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    invoke-virtual {v3}, Lcom/zendesk/api/model/views/View$ViewTickets;->getListItems()Ljava/util/List;

    move-result-object v2

    .line 160
    .local v2, tickets:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/Ticket;

    .line 161
    .local v1, t:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    .end local v1           #t:Lcom/zendesk/api/model/ticket/Ticket;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTicketSectionHeader(Lcom/zendesk/api/model/ticket/Ticket;)Ljava/lang/String;
    .locals 1
    .parameter "t"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->sectionHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTickets()Lcom/zendesk/api/model/views/View$ViewTickets;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->viewTickets:Lcom/zendesk/api/model/views/View$ViewTickets;

    return-object v0
.end method

.method public isActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zendesk/api/model/views/View;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zendesk/api/model/views/View;->parseJSONObject(Lorg/json/JSONObject;)V

    .line 137
    return-void
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "active"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/zendesk/api/model/views/View;->active:Ljava/lang/Boolean;

    .line 244
    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/zendesk/api/model/views/View;->count:Ljava/lang/Integer;

    .line 262
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zendesk/api/model/views/View;->id:Ljava/lang/Long;

    .line 226
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/zendesk/api/model/views/View;->title:Ljava/lang/String;

    .line 208
    return-void
.end method
