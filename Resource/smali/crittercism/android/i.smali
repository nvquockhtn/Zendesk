.class public final Lcrittercism/android/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crittercism/app/Crittercism;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/Crittercism;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "this.pendingStacktraces.size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to send stacktrace for Thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcrittercism/android/an;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/w;->a(Lcrittercism/android/an;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully sent stacktrace for Thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcrittercism/android/an;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size of pendingStacktraces: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread run for pendingStacktraces: entering run(). THREAD ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->h(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/an;

    move-result-object v1

    iget-wide v1, v1, Lcrittercism/android/an;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to send stacktrace for Thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->h(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/an;

    move-result-object v1

    iget-wide v1, v1, Lcrittercism/android/an;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->h(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/an;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcrittercism/android/w;->a(Lcrittercism/android/an;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully sent stacktrace for Thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->h(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/an;

    move-result-object v1

    iget-wide v1, v1, Lcrittercism/android/an;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcrittercism/android/i;->a()V

    :cond_0
    iget-object v0, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->i(Lcom/crittercism/app/Crittercism;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->h(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/an;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of pendingStacktraces: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/i;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
