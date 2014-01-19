.class public interface abstract Lcom/zendesk/api/model/ZDModelObject$ResponseParser;
.super Ljava/lang/Object;
.source "ZDModelObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/ZDModelObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseParser"
.end annotation


# virtual methods
.method public abstract parse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zendesk/api/http/RequestException;
        }
    .end annotation
.end method
