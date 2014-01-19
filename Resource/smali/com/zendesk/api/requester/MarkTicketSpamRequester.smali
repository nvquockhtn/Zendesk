.class public Lcom/zendesk/api/requester/MarkTicketSpamRequester;
.super Lcom/zendesk/api/http/Request;
.source "MarkTicketSpamRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2
    .parameter "ticketId"

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api/v2/tickets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mark_as_spam.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 18
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/MarkTicketSpamRequester;->setHttpMethod(B)V

    .line 19
    return-void
.end method
