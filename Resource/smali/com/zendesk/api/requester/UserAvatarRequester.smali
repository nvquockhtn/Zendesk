.class public Lcom/zendesk/api/requester/UserAvatarRequester;
.super Lcom/zendesk/api/http/Request;
.source "UserAvatarRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "url"
    .parameter "os"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/zendesk/api/requester/UserAvatarRequester;->setRedirectURL(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/zendesk/api/requester/UserAvatarRequester;->setOutputStream(Ljava/io/OutputStream;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/UserAvatarRequester;->setBinaryRequest(Z)V

    .line 25
    return-void
.end method
