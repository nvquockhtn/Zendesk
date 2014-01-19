.class public final Lcrittercism/android/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/crittercism/FeedbackDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/h;->b:Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcrittercism/android/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcrittercism/android/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/h;->b:Lcom/crittercism/FeedbackDetailsActivity;

    iget-object v1, v1, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v1}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcrittercism/android/be; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
