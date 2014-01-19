.class public Lcom/zendesk/api/requester/BookmarkDeleteRequester;
.super Lcom/zendesk/api/http/Request;
.source "BookmarkDeleteRequester.java"


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .parameter "bookmarkId"

    .prologue
    const/4 v2, 0x1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api/v2/bookmarks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/zendesk/api/requester/BookmarkDeleteRequester;->setHttpMethod(B)V

    .line 20
    return-void
.end method
