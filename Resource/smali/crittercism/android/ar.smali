.class public final Lcrittercism/android/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ar;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcrittercism/android/ar;->a:Lcom/crittercism/FeedbackActivity;

    iget-object v0, v0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcrittercism/android/ar;->a:Lcom/crittercism/FeedbackActivity;

    iget-object v0, v0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
