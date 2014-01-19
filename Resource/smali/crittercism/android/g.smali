.class public final Lcrittercism/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crittercism/app/Crittercism;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/Crittercism;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->e(Lcom/crittercism/app/Crittercism;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    iget-object v1, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    iget-boolean v1, v1, Lcom/crittercism/app/Crittercism;->a:Z

    if-nez v1, :cond_0

    if-gtz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/w;->f()Lcrittercism/android/o;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcrittercism/android/o;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcrittercism/android/o;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcrittercism/android/af;->a(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, v1, Lcrittercism/android/o;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    iget-object v0, v1, Lcrittercism/android/o;->b:Ljava/lang/Object;

    check-cast v0, Lcrittercism/android/m;

    invoke-static {v2, v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/app/Crittercism;Lcrittercism/android/m;)V

    :cond_2
    iget-object v0, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->f(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/m;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->f(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/m;

    move-result-object v0

    iget-object v1, v0, Lcrittercism/android/m;->b:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v0, Lcrittercism/android/m;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pop notification: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "username: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->f(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/m;

    move-result-object v2

    iget-object v2, v2, Lcrittercism/android/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcrittercism/android/g;->a:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "notification"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Lcrittercism/android/be; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcrittercism/android/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    invoke-virtual {v0}, Lcrittercism/android/be;->toString()Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    const-class v1, Lcrittercism/android/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_1
.end method
