.class public Lcom/zendesk/api/model/search/ProblemTicketSearch;
.super Lcom/zendesk/api/model/search/Search;
.source "ProblemTicketSearch.java"


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/BaseModel;)V
    .locals 0
    .parameter "baseModel"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/zendesk/api/model/search/Search;-><init>(Lcom/zendesk/api/model/BaseModel;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getAPIRequester()Lcom/zendesk/api/http/Request;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/zendesk/api/requester/ProblemTicketSearchRequester;

    invoke-virtual {p0}, Lcom/zendesk/api/model/search/ProblemTicketSearch;->getPendingPage()I

    move-result v1

    iget-object v2, p0, Lcom/zendesk/api/model/search/ProblemTicketSearch;->query:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/zendesk/api/requester/ProblemTicketSearchRequester;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
