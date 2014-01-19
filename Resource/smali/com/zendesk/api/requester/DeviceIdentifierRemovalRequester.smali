.class public Lcom/zendesk/api/requester/DeviceIdentifierRemovalRequester;
.super Lcom/zendesk/api/http/Request;
.source "DeviceIdentifierRemovalRequester.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_identifiers/destroy.json?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/api/requester/DeviceIdentifierRemovalRequester;->setHttpMethod(B)V

    .line 20
    return-void
.end method
