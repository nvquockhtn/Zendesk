.class public final Lcrittercism/android/aw;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    iget-boolean v1, v1, Lcom/crittercism/FeedbackActivity;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    invoke-virtual {v0}, Lcom/crittercism/FeedbackActivity;->a()V

    :cond_0
    iget-object v0, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    iget-boolean v0, v0, Lcom/crittercism/FeedbackActivity;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/aw;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/crittercism/FeedbackActivity;->d:Z

    :cond_1
    return-void
.end method
