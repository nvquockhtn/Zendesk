.class public Lcom/zendesk/api/requester/ViewTicketsRequester;
.super Lcom/zendesk/api/http/Request;
.source "ViewTicketsRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/Long;I)V
    .locals 3
    .parameter "viewId"
    .parameter "page"

    .prologue
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "api/v2/views/preview.json?per_page=22&include=users&page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 20
    const/4 v1, 0x3

    invoke-super {p0, v1}, Lcom/zendesk/api/http/Request;->setHttpMethod(B)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"view\":{\"id\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \"output\":{\"columns\":[\"requester\",\"assignee\",\"group\",\"subject\",\"priority\",\"created\",\"updated\"]}}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, body:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/ViewTicketsRequester;->setBody(Ljava/lang/String;)V

    .line 23
    return-void
.end method
