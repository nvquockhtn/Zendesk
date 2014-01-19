.class public final Lcrittercism/android/y;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/Exception;

.field private synthetic b:Lcom/crittercism/FeedbackCreateActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/y;->b:Lcom/crittercism/FeedbackCreateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcrittercism/android/ab;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/y;->b:Lcom/crittercism/FeedbackCreateActivity;

    iget-object v2, v2, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v1, v2}, Lcom/crittercism/app/Crittercism;->a(Lcrittercism/android/ab;)Lcrittercism/android/ab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcrittercism/android/y;->a:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcrittercism/android/y;->a()Lcrittercism/android/ab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcrittercism/android/ab;

    iget-object v0, p0, Lcrittercism/android/y;->b:Lcom/crittercism/FeedbackCreateActivity;

    iget-object v1, p0, Lcrittercism/android/y;->a:Ljava/lang/Exception;

    iget-object v2, v0, Lcom/crittercism/FeedbackCreateActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/crittercism/FeedbackCreateActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.crittercism.feedback"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/crittercism/FeedbackCreateActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/crittercism/FeedbackCreateActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/crittercism/FeedbackCreateActivity;->finish()V

    :cond_1
    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    return-void
.end method
