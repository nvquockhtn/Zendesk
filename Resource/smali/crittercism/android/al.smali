.class public final Lcrittercism/android/al;
.super Landroid/app/Dialog;


# instance fields
.field public a:Landroid/widget/EditText;

.field private b:Lcom/crittercism/FeedbackDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackDetailsActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcrittercism/android/al;->b:Lcom/crittercism/FeedbackDetailsActivity;

    invoke-virtual {p0, v0}, Lcrittercism/android/al;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcrittercism/android/al;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcrittercism/android/al;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x30

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcrittercism/android/al;->b:Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcrittercism/android/al;->b:Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x16

    invoke-static {v2}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    iget-object v2, p0, Lcrittercism/android/al;->b:Lcom/crittercism/FeedbackDetailsActivity;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcrittercism/android/al;->b:Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    const/16 v3, 0x17

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setId(I)V

    iget-object v2, p0, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcrittercism/android/al;->setContentView(Landroid/view/View;)V

    return-void
.end method
