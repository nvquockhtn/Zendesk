.class public Lcom/zendesk/api/requester/BookmarksRequester;
.super Lcom/zendesk/api/http/Request;
.source "BookmarksRequester.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "api/v2/bookmarks.json"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 18
    return-void
.end method
