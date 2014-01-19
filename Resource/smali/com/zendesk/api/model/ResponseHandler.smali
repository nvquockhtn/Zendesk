.class public interface abstract Lcom/zendesk/api/model/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract responseFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<TT;>;)V"
        }
    .end annotation
.end method
