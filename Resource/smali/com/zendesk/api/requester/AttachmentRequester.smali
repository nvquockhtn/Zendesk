.class public Lcom/zendesk/api/requester/AttachmentRequester;
.super Lcom/zendesk/api/http/Request;
.source "AttachmentRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/zendesk/api/http/ProgressMonitor;)V
    .locals 1
    .parameter "url"
    .parameter "os"
    .parameter "progressMonitor"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/zendesk/api/requester/AttachmentRequester;->setProgressMonitor(Lcom/zendesk/api/http/ProgressMonitor;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/zendesk/api/requester/AttachmentRequester;->setRedirectURL(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/zendesk/api/requester/AttachmentRequester;->setOutputStream(Ljava/io/OutputStream;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/AttachmentRequester;->setBinaryRequest(Z)V

    .line 28
    return-void
.end method
