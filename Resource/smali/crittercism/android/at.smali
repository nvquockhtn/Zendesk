.class public final Lcrittercism/android/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private synthetic b:Lcom/crittercism/app/Crittercism;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/Crittercism;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/at;->b:Lcom/crittercism/app/Crittercism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->d(Lcom/crittercism/app/Crittercism;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/Throwable;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->e(Lcom/crittercism/app/Crittercism;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/at;->b:Lcom/crittercism/app/Crittercism;

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcrittercism/android/at;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OH SHITTTTTTTzzzzz"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v0, v0, Lcrittercism/android/at;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v1, v1, Lcrittercism/android/at;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcrittercism/android/at;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    throw v0
.end method
