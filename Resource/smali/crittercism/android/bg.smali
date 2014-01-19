.class final Lcrittercism/android/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static c:Z

.field private static e:Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:[Ljava/lang/String;

.field private d:Ljava/lang/Process;

.field private f:Lcrittercism/android/bf;

.field private g:Lcrittercism/android/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcrittercism/android/bg;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bg;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    sput-object p1, Lcrittercism/android/bg;->e:Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "-t"

    aput-object v1, v0, v3

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "100"

    aput-object v1, v0, v4

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "-v"

    aput-object v1, v0, v5

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "time"

    aput-object v1, v0, v6

    :goto_0
    return-void

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "-d"

    aput-object v1, v0, v3

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "-v"

    aput-object v1, v0, v4

    iget-object v0, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    const-string v1, "time"

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcrittercism/android/bg;->c:Z

    return v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcrittercism/android/bg;->c:Z

    return-void
.end method

.method private e()Ljava/lang/StringBuilder;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    iput-object v0, p0, Lcrittercism/android/bg;->g:Lcrittercism/android/bf;

    sget-boolean v0, Lcrittercism/android/bg;->c:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    new-instance v0, Lcrittercism/android/bf;

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/bf;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    new-instance v0, Lcrittercism/android/bf;

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/bf;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcrittercism/android/bg;->g:Lcrittercism/android/bf;

    iget-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    invoke-virtual {v0}, Lcrittercism/android/bf;->start()V

    iget-object v0, p0, Lcrittercism/android/bg;->g:Lcrittercism/android/bf;

    invoke-virtual {v0}, Lcrittercism/android/bf;->start()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    iget-object v0, v0, Lcrittercism/android/bf;->a:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcrittercism/android/bg;->a:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcrittercism/android/bg;->a:Ljava/lang/StringBuilder;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetLogCatCallable$constructLogCat: INSIDE catch block: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcrittercism/android/bg;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    iget-object v0, v0, Lcrittercism/android/bf;->a:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcrittercism/android/bg;->a:Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    iget-object v1, v1, Lcrittercism/android/bf;->a:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcrittercism/android/bg;->a:Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    if-eqz v1, :cond_4

    :try_start_4
    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final c()V
    .locals 3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bg;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcrittercism/android/bg;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    sget-object v1, Lcrittercism/android/bg;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/bg;->f:Lcrittercism/android/bf;

    invoke-virtual {v0}, Lcrittercism/android/bf;->a()V

    iget-object v0, p0, Lcrittercism/android/bg;->g:Lcrittercism/android/bf;

    invoke-virtual {v0}, Lcrittercism/android/bf;->a()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/bg;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
