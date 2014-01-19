.class final Lcrittercism/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcrittercism/android/k;


# direct methods
.method constructor <init>(Lcrittercism/android/k;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/f;->a:Lcrittercism/android/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcrittercism/android/f;->a:Lcrittercism/android/k;

    iget-object v1, v1, Lcrittercism/android/k;->a:Lcom/crittercism/FeedbackActivity;

    iget-object v1, v1, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcrittercism/android/f;->a:Lcrittercism/android/k;

    iget-object v2, v2, Lcrittercism/android/k;->a:Lcom/crittercism/FeedbackActivity;

    const-class v3, Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.crittercism.feedback"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcrittercism/android/f;->a:Lcrittercism/android/k;

    iget-object v0, v0, Lcrittercism/android/k;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crittercism/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
