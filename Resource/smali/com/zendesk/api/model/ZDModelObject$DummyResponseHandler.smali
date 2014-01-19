.class public Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;
.super Ljava/lang/Object;
.source "ZDModelObject.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/ZDModelObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DummyResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/ZDModelObject;


# direct methods
.method protected constructor <init>(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;,"Lcom/zendesk/api/model/ZDModelObject<TT;>.DummyResponseHandler<TE;>;"
    iput-object p1, p0, Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;->this$0:Lcom/zendesk/api/model/ZDModelObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 264
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;,"Lcom/zendesk/api/model/ZDModelObject<TT;>.DummyResponseHandler<TE;>;"
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Lcom/zendesk/api/model/ZDModelObject$DummyResponseHandler;,"Lcom/zendesk/api/model/ZDModelObject<TT;>.DummyResponseHandler<TE;>;"
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<TE;>;"
    return-void
.end method
