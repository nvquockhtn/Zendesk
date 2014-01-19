.class public final Lcrittercism/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crittercism/app/Crittercism;

.field private final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/Crittercism;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/e;->a:Lcom/crittercism/app/Crittercism;

    iput-object p2, p0, Lcrittercism/android/e;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/e;->a:Lcom/crittercism/app/Crittercism;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->c(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/w;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/e;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcrittercism/android/w;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
