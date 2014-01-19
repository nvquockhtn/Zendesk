.class public final Lcrittercism/android/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ao;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/ao;->b:Z

    iput-object p1, p0, Lcrittercism/android/ao;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcrittercism/android/ao;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/ao;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcrittercism/android/ao;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcrittercism/android/be; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcrittercism/android/be;->toString()Ljava/lang/String;

    goto :goto_0
.end method
