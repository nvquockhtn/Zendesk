.class Lcom/zendesk/api/model/views/Bookmarks$3;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lcom/zendesk/api/model/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/api/model/views/Bookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/api/model/ResponseHandler",
        "<",
        "Lcom/zendesk/api/model/views/Bookmarks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/api/model/views/Bookmarks;


# direct methods
.method constructor <init>(Lcom/zendesk/api/model/views/Bookmarks;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/zendesk/api/model/views/Bookmarks$3;->this$0:Lcom/zendesk/api/model/views/Bookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 163
    return-void
.end method

.method public responseSuccess(Lcom/zendesk/api/model/ZDModelObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ZDModelObject",
            "<",
            "Lcom/zendesk/api/model/views/Bookmarks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, forObject:Lcom/zendesk/api/model/ZDModelObject;,"Lcom/zendesk/api/model/ZDModelObject<Lcom/zendesk/api/model/views/Bookmarks;>;"
    return-void
.end method
