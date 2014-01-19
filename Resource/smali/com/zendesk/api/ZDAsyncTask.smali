.class public abstract Lcom/zendesk/api/ZDAsyncTask;
.super Landroid/os/AsyncTask;
.source "ZDAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private t:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/ZDAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zendesk/api/ZDAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/zendesk/api/ZDAsyncTask;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/zendesk/api/ZDAsyncTask;->t:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zendesk/api/ZDAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zendesk/api/ZDAsyncTask;->t:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/zendesk/api/ZDAsyncTask;->responseSuccess()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/zendesk/api/ZDAsyncTask;->t:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/zendesk/api/ZDAsyncTask;->responseFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract responseFailed(Ljava/lang/Throwable;)V
.end method

.method protected abstract responseSuccess()V
.end method

.method protected abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
