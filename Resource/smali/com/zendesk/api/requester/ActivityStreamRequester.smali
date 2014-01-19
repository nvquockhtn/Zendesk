.class public Lcom/zendesk/api/requester/ActivityStreamRequester;
.super Lcom/zendesk/api/http/Request;
.source "ActivityStreamRequester.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "activities.json"

    invoke-direct {p0, v0}, Lcom/zendesk/api/http/Request;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
