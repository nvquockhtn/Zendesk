.class public Lcom/zendesk/api/requester/BookmarkCreateRequester;
.super Lcom/zendesk/api/http/Request;
.source "BookmarkCreateRequester.java"


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "ticketId"

    .prologue
    .line 18
    const-string v0, "api/v2/bookmarks.json"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 19
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/BookmarkCreateRequester;->setHttpMethod(B)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"bookmark\": {\"ticket_id\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/BookmarkCreateRequester;->setBody(Ljava/lang/String;)V

    .line 21
    return-void
.end method
