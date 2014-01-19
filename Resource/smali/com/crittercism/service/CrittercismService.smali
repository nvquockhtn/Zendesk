.class public Lcom/crittercism/service/CrittercismService;
.super Landroid/app/Service;


# instance fields
.field public a:Ljava/util/ArrayList;

.field private b:Ljava/util/Timer;

.field private c:Landroid/app/NotificationManager;

.field private final d:Lcrittercism/android/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/service/CrittercismService;->b:Ljava/util/Timer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/service/CrittercismService;->a:Ljava/util/ArrayList;

    new-instance v0, Lcrittercism/android/av;

    invoke-direct {v0, p0}, Lcrittercism/android/av;-><init>(Lcom/crittercism/service/CrittercismService;)V

    iput-object v0, p0, Lcom/crittercism/service/CrittercismService;->d:Lcrittercism/android/ag;

    new-instance v0, Lcrittercism/android/bd;

    invoke-direct {v0}, Lcrittercism/android/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***** READ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/service/CrittercismService;->d:Lcrittercism/android/ag;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "CrittercismService"

    const-string v1, "Service creating"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcrittercism/android/as;->a(Landroid/content/Context;)V

    invoke-static {}, Lcrittercism/android/aj;->b()V

    invoke-static {p0}, Lcrittercism/android/aj;->a(Landroid/content/Context;)V

    invoke-static {}, Lcrittercism/android/aj;->f()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/crittercism/service/CrittercismService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/crittercism/service/CrittercismService;->c:Landroid/app/NotificationManager;

    const-string v0, "com.crittercism.prefs.did"

    invoke-virtual {p0, v0}, Lcom/crittercism/service/CrittercismService;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "CritterTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/service/CrittercismService;->b:Ljava/util/Timer;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CrittercismService"

    const-string v1, "Service destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcrittercism/android/bi;

    invoke-direct {v0}, Lcrittercism/android/bi;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/crittercism/service/CrittercismService;->c:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/crittercism/service/CrittercismService;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/service/CrittercismService;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/service/CrittercismService;->b:Ljava/util/Timer;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
