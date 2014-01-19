.class public Lcom/zendesk/api/model/views/RecentTickets;
.super Lcom/zendesk/api/model/ZDPagingModelObject;
.source "RecentTickets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDPagingModelObject",
        "<",
        "Lcom/zendesk/api/model/ticket/Ticket;",
        "Lcom/zendesk/api/model/views/RecentTickets;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_TICKETS:Ljava/lang/String; = "tickets"
    .annotation runtime Lcom/zendesk/api/APIKey;
        listOf = Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;
        path = "tickets"
        type = Ljava/util/List;
    .end annotation
.end field


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/zendesk/api/APIKey;
        path = "count"
        required = .enum Lcom/zendesk/api/APIKeyRequired;->NEVER:Lcom/zendesk/api/APIKeyRequired;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDPagingModelObject;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/zendesk/api/model/views/RecentTickets;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/zendesk/api/model/views/RecentTickets;)Lcom/zendesk/api/model/BaseModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zendesk/api/model/views/RecentTickets;->baseModel:Lcom/zendesk/api/model/BaseModel;

    return-object v0
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/zendesk/api/requester/RecentTicketsRequester;

    invoke-direct {v0}, Lcom/zendesk/api/requester/RecentTicketsRequester;-><init>()V

    return-object v0
.end method

.method public getReportedCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zendesk/api/model/views/RecentTickets;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zendesk/api/model/views/RecentTickets;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseResponse(Ljava/lang/String;)V
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, json:Lorg/json/JSONObject;
    const-string v5, "count"

    invoke-static {v1, v5}, Lcom/zendesk/api/model/ZDModelObject;->jsonIntVal(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/zendesk/api/model/views/RecentTickets;->count:Ljava/lang/Integer;

    .line 66
    const-string v5, "tickets"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 68
    .local v3, tickets:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v4, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/Ticket;>;"
    if-eqz v3, :cond_1

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 72
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    .local v2, ticket:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 74
    new-instance v5, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;

    invoke-direct {v5, p0}, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;-><init>(Lcom/zendesk/api/model/views/RecentTickets;)V

    #calls: Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;->getTicket(Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v5, v2}, Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;->access$000(Lcom/zendesk/api/model/views/RecentTickets$RecentTicket;Lorg/json/JSONObject;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0           #i:I
    .end local v2           #ticket:Lorg/json/JSONObject;
    :cond_1
    iput-object v4, p0, Lcom/zendesk/api/model/views/RecentTickets;->listItems:Ljava/util/List;

    .line 79
    return-void
.end method
