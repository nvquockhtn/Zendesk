.class public Lcom/zendesk/api/requester/SubdomainRequester;
.super Lcom/zendesk/api/http/Request;
.source "SubdomainRequester.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 16
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;Z)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zendesk/api/requester/SubdomainRequester;->shouldUseAuth:Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zendesk/api/requester/SubdomainRequester;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    const-string v3, "http://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api/v2/account/resolve.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/SubdomainRequester;->setRedirectURL(Ljava/lang/String;)V

    .line 19
    return-void
.end method
