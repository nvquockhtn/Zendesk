.class public Lcom/zendesk/api/requester/TicketCreateRequester;
.super Lcom/zendesk/api/http/Request;
.source "TicketCreateRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 18
    const-string v0, "api/v2/tickets.json"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 19
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/TicketCreateRequester;->setHttpMethod(B)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/zendesk/api/requester/TicketCreateRequester;->setBody(Ljava/lang/String;)V

    .line 21
    return-void
.end method
