.class public Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;
.super Lcom/zendesk/api/model/ZDModelObject;
.source "ProblemTicketIncidents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/api/model/ZDModelObject",
        "<",
        "Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;",
        ">;"
    }
.end annotation


# instance fields
.field private baseModel:Lcom/zendesk/api/model/BaseModel;

.field private listOfTicketIncidents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field private ticketId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;J)V
    .locals 1
    .parameter "baseModel"
    .parameter "ticketId"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zendesk/api/model/ZDModelObject;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->baseModel:Lcom/zendesk/api/model/BaseModel;

    .line 32
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->ticketId:Ljava/lang/Long;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->listOfTicketIncidents:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/zendesk/api/requester/ProblemTicketIncidentListRequest;

    iget-object v1, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->ticketId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/ProblemTicketIncidentListRequest;-><init>(J)V

    return-object v0
.end method

.method public getIncidentTickets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->listOfTicketIncidents:Ljava/util/List;

    return-object v0
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
    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, json:Lorg/json/JSONObject;
    const-string v5, "tickets"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    iget-object v5, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->listOfTicketIncidents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 47
    iget-object v5, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->listOfTicketIncidents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    const-string v5, "tickets"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 51
    .local v4, tickets:Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 53
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 54
    .local v3, ticketJSON:Lorg/json/JSONObject;
    new-instance v2, Lcom/zendesk/api/model/ticket/Ticket;

    iget-object v5, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->baseModel:Lcom/zendesk/api/model/BaseModel;

    invoke-direct {v2, v5, v3}, Lcom/zendesk/api/model/ticket/Ticket;-><init>(Lcom/zendesk/api/model/BaseModel;Lorg/json/JSONObject;)V

    .line 55
    .local v2, ticket:Lcom/zendesk/api/model/ticket/Ticket;
    if-eqz v2, :cond_1

    .line 56
    iget-object v5, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->listOfTicketIncidents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0           #i:I
    .end local v2           #ticket:Lcom/zendesk/api/model/ticket/Ticket;
    .end local v3           #ticketJSON:Lorg/json/JSONObject;
    :cond_2
    iget-object v5, p0, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->listOfTicketIncidents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 63
    .end local v4           #tickets:Lorg/json/JSONArray;
    :cond_3
    return-void
.end method

.method public refreshIncidents()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/zendesk/api/model/ticket/ProblemTicketIncidents;->getAPIRequester()Lcom/zendesk/api/http/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/http/Request;->execute()V

    .line 79
    return-void
.end method
