.class public final Lcrittercism/android/ad;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/Exception;

.field private synthetic b:Lcom/crittercism/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ad;->b:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->f()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcrittercism/android/ad;->a:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcrittercism/android/ad;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcrittercism/android/ad;->b:Lcom/crittercism/FeedbackActivity;

    iget-object v0, p0, Lcrittercism/android/ad;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iput-object p1, v1, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Lcrittercism/android/k;

    invoke-direct {v0, v1, v1, p1}, Lcrittercism/android/k;-><init>(Lcom/crittercism/FeedbackActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    new-instance v2, Lcrittercism/android/bb;

    invoke-direct {v2, v1}, Lcrittercism/android/bb;-><init>(Lcom/crittercism/FeedbackActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcrittercism/android/be;

    if-eqz v2, :cond_0

    check-cast v0, Lcrittercism/android/be;

    invoke-virtual {v0}, Lcrittercism/android/be;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method public final onPreExecute()V
    .locals 0

    return-void
.end method
