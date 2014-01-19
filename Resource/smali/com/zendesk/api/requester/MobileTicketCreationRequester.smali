.class public Lcom/zendesk/api/requester/MobileTicketCreationRequester;
.super Lcom/zendesk/api/http/Request;
.source "MobileTicketCreationRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "email"
    .parameter "description"
    .parameter "subject"
    .parameter "tags"

    .prologue
    .line 21
    const-string v1, "requests/mobile_api/create.json"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->shouldUseAuth:Z

    .line 23
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->setHttpMethod(B)V

    .line 24
    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v1}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->setContentType(Ljava/lang/String;)V

    .line 25
    const-string v1, "X-Zendesk-Mobile-API"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "&email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "&description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    if-eqz p3, :cond_0

    .line 32
    const-string v1, "&subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    if-eqz p4, :cond_1

    .line 35
    const-string v1, "&set_tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zendesk/api/requester/MobileTicketCreationRequester;->setBody(Ljava/lang/String;)V

    .line 39
    return-void
.end method
