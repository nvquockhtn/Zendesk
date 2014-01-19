.class public Lcom/zendesk/api/requester/TicketUpdateRequester;
.super Lcom/zendesk/api/http/Request;
.source "TicketUpdateRequester.java"


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter "ticketId"
    .parameter "json"

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api/v2/tickets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 20
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/TicketUpdateRequester;->setHttpMethod(B)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/zendesk/api/requester/TicketUpdateRequester;->setBody(Ljava/lang/String;)V

    .line 22
    return-void
.end method
