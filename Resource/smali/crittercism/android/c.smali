.class public final Lcrittercism/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/crittercism/app/Crittercism;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/Crittercism;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->b(Lcom/crittercism/app/Crittercism;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/crittercism/service/ICritter;->a(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    const-string v1, "com.crittercism.prefs.did"

    invoke-interface {v0, v1}, Lcom/crittercism/service/ICritter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/app/Crittercism;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crittercism.prefs.did"

    invoke-static {v0, v1}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/w;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/app/Crittercism;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.crittercism.prefs.did"

    invoke-static {v1, v2, v0}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    iget-object v1, v1, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    const-string v2, "com.crittercism.prefs.did"

    invoke-interface {v1, v2, v0}, Lcom/crittercism/service/ICritter;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    iget-object v1, v1, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    const-string v2, "com.crittercism.service.library_version"

    const-string v3, "1.3.0"

    invoke-interface {v1, v2, v3}, Lcom/crittercism/service/ICritter;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;

    move-result-object v1

    iput-object v0, v1, Lcrittercism/android/w;->b:Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/app/Crittercism;->a:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "com.crittercism.service.ICritter"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/crittercism/service/ICritter;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/crittercism/service/ICritter;

    goto :goto_0

    :cond_4
    new-instance v0, Lcrittercism/android/au;

    invoke-direct {v0, p2}, Lcrittercism/android/au;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/app/Crittercism;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.crittercism.prefs.did"

    invoke-static {v1, v2, v0}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcrittercism/android/c;->a:Lcom/crittercism/app/Crittercism;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    const-string v0, "Crittercism"

    const-string v1, "Service Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
