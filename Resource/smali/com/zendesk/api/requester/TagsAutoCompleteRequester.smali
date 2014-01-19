.class public Lcom/zendesk/api/requester/TagsAutoCompleteRequester;
.super Lcom/zendesk/api/http/Request;
.source "TagsAutoCompleteRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "searchString"

    .prologue
    .line 18
    const-string v1, "api/v2/autocomplete/tags.json"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 19
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;->setHttpMethod(B)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"name\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;->escapeForJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, jsonReq:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/TagsAutoCompleteRequester;->setBody(Ljava/lang/String;)V

    .line 22
    return-void
.end method
