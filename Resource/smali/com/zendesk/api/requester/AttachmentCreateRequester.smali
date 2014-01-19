.class public Lcom/zendesk/api/requester/AttachmentCreateRequester;
.super Lcom/zendesk/api/http/MonitoredUploadRequest;
.source "AttachmentCreateRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/zendesk/api/http/ProgressMonitor;J)V
    .locals 8
    .parameter "filename"
    .parameter "token"
    .parameter "inputStream"
    .parameter "progressMonitor"
    .parameter "fileSize"

    .prologue
    .line 25
    const-string v1, "api/v2/uploads.json"

    const-string v5, "image/*"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/zendesk/api/http/MonitoredUploadRequest;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/zendesk/api/http/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;J)V

    .line 26
    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/zendesk/api/requester/AttachmentCreateRequester;->formParams:Ljava/util/Map;

    const-string v1, "token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-void
.end method
