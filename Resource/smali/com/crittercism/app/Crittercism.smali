.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/crittercism/app/Crittercism;


# instance fields
.field public a:Z

.field public b:Lcom/crittercism/service/ICritter;

.field public final c:Landroid/os/Handler;

.field private e:Lcrittercism/android/w;

.field private f:Lcrittercism/android/af;

.field private g:Lcrittercism/android/m;

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:F

.field private k:Lcrittercism/android/an;

.field private l:Ljava/util/Vector;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/crittercism/app/Crittercism;

    invoke-direct {v0}, Lcom/crittercism/app/Crittercism;-><init>()V

    sput-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->h:Z

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/crittercism/app/Crittercism;->j:F

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->o:Ljava/lang/String;

    const-string v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/Crittercism;->q:Z

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->a:Z

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    new-instance v0, Lcrittercism/android/d;

    invoke-direct {v0, p0}, Lcrittercism/android/d;-><init>(Lcom/crittercism/app/Crittercism;)V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->c:Landroid/os/Handler;

    new-instance v0, Lcrittercism/android/c;

    invoke-direct {v0, p0}, Lcrittercism/android/c;-><init>(Lcom/crittercism/app/Crittercism;)V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->r:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a(Lcom/crittercism/app/Crittercism;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/crittercism/app/Crittercism;
    .locals 1

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide v2, 0x757b12c00L

    rem-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    rem-long/2addr v0, v4

    const-wide/32 v4, 0x36ee80

    rem-long/2addr v0, v4

    const-wide/32 v4, 0xea60

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-string v0, "1 day ago"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-wide/16 v0, 0x7

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " days ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x7

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0xe

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const-string v0, "a week ago"

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0xe

    cmp-long v0, v2, v0

    if-ltz v0, :cond_4

    const-wide/16 v0, 0x15

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-string v0, "2 weeks ago"

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x15

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    const-wide/16 v0, 0x1e

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const-string v0, "3 weeks ago"

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x1f

    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    const-wide/16 v0, 0x3c

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-string v0, "a month ago"

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x16d

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const-wide/16 v0, 0x1e

    div-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " months ago"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-wide/16 v0, 0x16d

    div-long v0, v2, v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    const-string v0, "a year ago"

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " years ago"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-wide/16 v2, 0xe10

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const-string v0, "1 hour ago"

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " hours ago"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-string v0, "1 minute ago"

    goto/16 :goto_0

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " minutes ago"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    const-string v0, "1 second ago!"

    goto/16 :goto_0

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " seconds ago"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "just now"

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x8

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    array-length v0, p5

    if-lez v0, :cond_1

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    aget-boolean v1, p5, v7

    iput-boolean v1, v0, Lcom/crittercism/app/Crittercism;->q:Z

    :goto_0
    iput-boolean v6, p0, Lcom/crittercism/app/Crittercism;->h:Z

    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-direct {p0}, Lcom/crittercism/app/Crittercism;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->n:Ljava/lang/String;

    new-instance v0, Lcrittercism/android/w;

    const-string v4, "1.3.0"

    iget-object v5, p0, Lcom/crittercism/app/Crittercism;->n:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0}, Lcrittercism/android/w;->d()F

    move-result v0

    iput v0, p0, Lcom/crittercism/app/Crittercism;->j:F

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/af;

    if-nez v0, :cond_0

    new-instance v0, Lcrittercism/android/af;

    invoke-direct {v0, v7}, Lcrittercism/android/af;-><init>(B)V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/af;

    :cond_0
    invoke-static {p1}, Lcrittercism/android/as;->a(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/Crittercism;->m:Z

    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->m:Z

    if-eqz v0, :cond_2

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iput-boolean v6, v0, Lcom/crittercism/app/Crittercism;->q:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/crittercism/app/Crittercism;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize: notification title is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v1, "breadcrumbsFileString"

    invoke-static {v0, v1}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "session_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v2, "current_session"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    const-string v1, "current_session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_3
    :goto_3
    :try_start_2
    const-string v2, "previous_session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "current_session"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Breadcrumbs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v2, "breadcrumbsFileString"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/crittercism/app/Crittercism;->i()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lcrittercism/android/at;

    if-nez v1, :cond_4

    new-instance v1, Lcrittercism/android/at;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/at;-><init>(Lcom/crittercism/app/Crittercism;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_4
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->q:Z

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.crittercism.service.CrittercismService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.crittercism.service.app_info"

    invoke-direct {p0}, Lcom/crittercism/app/Crittercism;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_5
    const-string v0, "Crittercism"

    const-string v1, "Crittercism Initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcrittercism/android/g;

    invoke-direct {v0, p0}, Lcrittercism/android/g;-><init>(Lcom/crittercism/app/Crittercism;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_3

    :catch_2
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v1, "com.crittercism.prefs.did"

    invoke-static {v0, v1}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0}, Lcrittercism/android/w;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v2, "com.crittercism.prefs.did"

    invoke-static {v1, v2, v0}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    iput-object v0, v1, Lcrittercism/android/w;->b:Ljava/lang/String;

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_6
.end method

.method public static synthetic a(Lcom/crittercism/app/Crittercism;Lcrittercism/android/m;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iget-object v1, v1, Lcrittercism/android/m;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iget-object v0, v0, Lcrittercism/android/m;->c:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iput-object v0, v1, Lcrittercism/android/m;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v2, "optOutStatus"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    const-string v2, ""

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "critter_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "read opt out status as: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v1, "true"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_2
    const-string v1, "false"

    goto :goto_3
.end method

.method private a(Lcrittercism/android/an;)Z
    .locals 4

    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/an;

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/an;

    iget-object v0, v0, Lcrittercism/android/an;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v1, v1, Lcom/crittercism/app/Crittercism;->q:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAILED TO LOG ERROR REASON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v1, v0}, Lcrittercism/android/w;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/an;

    if-eqz v0, :cond_0

    new-instance v0, Lcrittercism/android/i;

    invoke-direct {v0, p0}, Lcrittercism/android/i;-><init>(Lcom/crittercism/app/Crittercism;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "INVOKING sendLogThread.join() for Thread id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/an;

    iget-wide v2, v2, Lcrittercism/android/an;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    const-string v2, "com.crittercism.service.library_version"

    invoke-interface {v1, v2}, Lcom/crittercism/service/ICritter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/crittercism/service/ICritter;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/crittercism/app/Crittercism;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/app/Crittercism;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    return-object v0
.end method

.method public static synthetic d(Lcom/crittercism/app/Crittercism;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->m:Z

    return v0
.end method

.method public static synthetic e(Lcom/crittercism/app/Crittercism;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->q:Z

    return v0
.end method

.method public static synthetic f(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/m;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    return-object v0
.end method

.method public static synthetic g(Lcom/crittercism/app/Crittercism;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic h(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/an;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/an;

    return-object v0
.end method

.method private i()V
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v2, "crittercismStacktracesJsonArray"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Crittercism$readPendingStacktracesFromDisk$stacktracesJsonArrayString: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Crittercism$readPendingStacktracesFromDisk size of pendingStacktraces is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ""

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "critter_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    iget-object v6, v6, Lcrittercism/android/w;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    :goto_2
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_3
    move v2, v3

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_3

    move v0, v3

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/an;

    invoke-direct {p0, v0}, Lcom/crittercism/app/Crittercism;->a(Lcrittercism/android/an;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_3

    :cond_3
    :try_start_4
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eq v4, v5, :cond_4

    invoke-static {v4}, Lcrittercism/android/an;->a(Lorg/json/JSONObject;)Lcrittercism/android/an;

    move-result-object v4

    iget-object v5, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :try_start_5
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcrittercism/android/an;->a(Lorg/json/JSONObject;)Lcrittercism/android/an;

    move-result-object v2

    iget-object v4, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v4

    goto :goto_6
.end method

.method public static synthetic i(Lcom/crittercism/app/Crittercism;)V
    .locals 5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Crittercism$writePendingStacktracesToDisk size of pendingStacktraces is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Crittercism$writePendingStacktracesToDisk$stacktracesJsonArrayString size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "crittercismStacktracesJsonArray"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :try_start_0
    const-string v2, "crittercismStacktracesJsonArray"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "critter_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    iget-object v4, v4, Lcrittercism/android/w;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/an;

    iget-object v0, v0, Lcrittercism/android/an;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crittercism$writePendingStacktracesToDisk$stacktracesJsonArrayString "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "Crittercism"

    const-string v1, "Failed to store offline crashes!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method public static varargs declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 7

    const-class v6, Lcom/crittercism/app/Crittercism;

    monitor-enter v6

    :try_start_0
    const-string v0, "CRITTERCISM_APP_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Crittercism"

    const-string v1, "ERROR: Crittercism will NOT work unless you enter a valid Crittercism App ID. Check your settings page to find the ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Crittercism"

    const-string v1, "Failed to initialize Crittercism - Please report this issue, thanks!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static varargs declared-synchronized init(Landroid/content/Context;Ljava/lang/String;[Z)V
    .locals 7

    const-class v6, Lcom/crittercism/app/Crittercism;

    monitor-enter v6

    :try_start_0
    const-string v0, "CRITTERCISM_APP_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Crittercism"

    const-string v1, "ERROR: Crittercism will NOT work unless you enter a valid Crittercism App ID. Check your settings page to find the ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    const-string v3, ""

    const-string v4, ""

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    monitor-exit v6

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Crittercism"

    const-string v1, "Failed to initialize Crittercism - Please report this issue, thanks!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private j()Landroid/content/pm/ApplicationInfo;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getApplicationInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 4

    const-string v0, "1.0"

    :try_start_0
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static l()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized leaveBreadcrumb(Ljava/lang/String;)V
    .locals 7

    const-class v4, Lcom/crittercism/app/Crittercism;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v5, Lcom/crittercism/app/Crittercism;->m:Z

    if-nez v0, :cond_0

    iget-object v0, v5, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v1, "breadcrumbsFileString"

    invoke-static {v0, v1}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    const-string v2, "current_session"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_3
    const-string v1, "current_session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    move-object v3, v0

    :goto_1
    :try_start_4
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    if-lt v2, v6, :cond_1

    :goto_3
    :try_start_6
    const-string v1, "current_session"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Breadcrumbs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentSessionJsonArray size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v5, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v1, "breadcrumbsFileString"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_0
    monitor-exit v4

    return-void

    :catch_0
    move-exception v0

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_1
    move-exception v1

    :try_start_9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v3, v0

    goto :goto_1

    :cond_1
    :try_start_a
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    move-object v3, v0

    goto/16 :goto_1

    :cond_4
    move-object v3, v0

    goto/16 :goto_1
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    new-instance v1, Lcrittercism/android/e;

    invoke-direct {v1, v0, p0}, Lcrittercism/android/e;-><init>(Lcom/crittercism/app/Crittercism;Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Crittercism"

    const-string v1, "Initialize the Crittercism library before using its methods."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setNotificationTitle(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notificationTitle"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :try_start_0
    const-string v1, "notificationTitle"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :goto_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iput-object p0, v0, Lcom/crittercism/app/Crittercism;->p:Ljava/lang/String;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saved notificationTitle as "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 4

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "optOutStatus"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :try_start_0
    const-string v1, "optOutStatus"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "critter_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-object v3, v3, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    iget-object v3, v3, Lcrittercism/android/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_optoutsetting.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p0, :cond_3

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iput-boolean p0, v0, Lcom/crittercism/app/Crittercism;->m:Z

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Saved optOutStatus as "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    const-string v0, "true"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to SharedPreferences!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "false"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_3
    :try_start_3
    const-string v0, "false"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Crittercism"

    const-string v1, "Failed to store opt out status!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->h:Z

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    if-nez v0, :cond_0

    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    new-instance v1, Lcrittercism/android/m;

    invoke-direct {v1}, Lcrittercism/android/m;-><init>()V

    iput-object v1, v0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    :cond_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->d:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iput-object p0, v0, Lcrittercism/android/m;->c:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_1
    const-string v0, "Crittercism"

    const-string v1, "Initialize the Crittercism library before using its methods."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget v0, p0, Lcom/crittercism/app/Crittercism;->j:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final a(Lcrittercism/android/ab;)Lcrittercism/android/ab;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0, p1}, Lcrittercism/android/w;->a(Lcrittercism/android/ab;)Lcrittercism/android/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0, p1, p2}, Lcrittercism/android/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0, p1, p2}, Lcrittercism/android/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/Throwable;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "log called for Thread Id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    const-string v1, "breadcrumbsFileString"

    invoke-static {v0, v1}, Lcrittercism/android/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    :goto_0
    :try_start_2
    const-string v0, "current_session"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_3
    const-string v0, "current_session"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "previous_session"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logging breadcrumbs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0}, Lcrittercism/android/w;->b()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0}, Lcrittercism/android/w;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcrittercism/android/an;->a(Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/List;Lorg/json/JSONObject;JLorg/json/JSONObject;)Lcrittercism/android/an;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crittercism/app/Crittercism;->a(Lcrittercism/android/an;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x1c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "notificationTitle"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    invoke-static {v0}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNotificationTitle: notification title is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->b:Lcom/crittercism/service/ICritter;

    invoke-direct {p0}, Lcom/crittercism/app/Crittercism;->j()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/crittercism/service/ICritter;->b(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->r:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/app/Crittercism;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->o:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/crittercism/app/Crittercism;->j:F

    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/w;

    invoke-virtual {v0}, Lcrittercism/android/w;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iget-object v0, v0, Lcrittercism/android/m;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    const-string v0, "anonymous"

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->g:Lcrittercism/android/m;

    iget-object v0, v0, Lcrittercism/android/m;->c:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
