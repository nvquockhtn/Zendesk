.class public final Lcrittercism/android/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/az;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0xb

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcrittercism/android/az;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcrittercism/android/az;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/crittercism/FeedbackActivity;->d:Z

    iget-object v0, p0, Lcrittercism/android/az;->a:Lcom/crittercism/FeedbackActivity;

    invoke-virtual {v0, v3}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    :cond_2
    return-void
.end method
