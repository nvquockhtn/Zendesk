.class public Lcom/zendesk/android/ui/AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Exception;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 22
    .local p0, this:Lcom/zendesk/android/ui/AsyncTaskResult;,"Lcom/zendesk/android/ui/AsyncTaskResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zendesk/android/ui/AsyncTaskResult;->error:Ljava/lang/Exception;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/zendesk/android/ui/AsyncTaskResult;,"Lcom/zendesk/android/ui/AsyncTaskResult<TT;>;"
    .local p1, result:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/zendesk/android/ui/AsyncTaskResult;->result:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 13
    .local p0, this:Lcom/zendesk/android/ui/AsyncTaskResult;,"Lcom/zendesk/android/ui/AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/zendesk/android/ui/AsyncTaskResult;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, this:Lcom/zendesk/android/ui/AsyncTaskResult;,"Lcom/zendesk/android/ui/AsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/zendesk/android/ui/AsyncTaskResult;->result:Ljava/lang/Object;

    return-object v0
.end method
