.class public Lcom/crittercism/FeedbackCreateActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lcrittercism/android/ab;

.field public b:Landroid/app/ProgressDialog;

.field private c:Lcrittercism/android/aa;

.field private d:Lcrittercism/android/aa;

.field private e:Lcrittercism/android/aa;

.field private f:Lcrittercism/android/aa;

.field private g:Lcrittercism/android/y;

.field private h:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->b:Landroid/app/ProgressDialog;

    new-instance v0, Lcrittercism/android/x;

    invoke-direct {v0, p0}, Lcrittercism/android/x;-><init>(Lcom/crittercism/FeedbackCreateActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcrittercism/android/ab;

    invoke-direct {v0, p1}, Lcrittercism/android/ab;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0, p1}, Lcrittercism/android/ab;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "love"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crittercism/app/Crittercism;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ab;->d(Ljava/lang/String;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-nez v1, :cond_3

    new-instance v1, Lcrittercism/android/ab;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcrittercism/android/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    :cond_0
    :goto_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcrittercism/android/ab;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v1, "OK"

    new-instance v2, Lcrittercism/android/u;

    invoke-direct {v2}, Lcrittercism/android/u;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v1, v0}, Lcrittercism/android/ab;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, ""

    const/16 v1, 0x15

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->b:Landroid/app/ProgressDialog;

    new-instance v0, Lcrittercism/android/y;

    invoke-direct {v0, p0}, Lcrittercism/android/y;-><init>(Lcom/crittercism/FeedbackCreateActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcrittercism/android/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "bug"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/FeedbackCreateActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/FeedbackCreateActivity;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_6
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "question"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "idea"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackCreateActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-eqz p1, :cond_0

    const-string v0, "com.crittercism.feedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.crittercism.feedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    :cond_0
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/crittercism/FeedbackCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.crittercism.feedback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.crittercism.feedback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    :cond_1
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x2

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x3

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x4

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x5

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v1, v1

    aput v1, v2, v3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x4180

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v5, 0xe

    invoke-static {v5}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0xe48b45

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0x28

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x1

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcrittercism/android/ak;

    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v2, v8, v9}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v6, v7}, Lcrittercism/android/ak;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v6}, Lcrittercism/android/ak;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v6, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    const v8, -0xe48b45

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v6, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->setSingleLine()V

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    const/high16 v6, 0x4180

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v6, 0x0

    invoke-static {v6}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setId(I)V

    iget-object v6, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v6}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v6}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    const/16 v8, 0x32

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    const/16 v6, 0xc

    invoke-static {v6}, Lcrittercism/android/as;->b(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcrittercism/android/ak;

    new-instance v9, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v2, v10, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v8, v9}, Lcrittercism/android/ak;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v8}, Lcrittercism/android/ak;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v9, -0x1

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v8, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v8, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x4140

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 v2, 0x30

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setGravity(I)V

    const/16 v2, 0xf

    invoke-static {v2}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v2, 0x13

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setId(I)V

    const/high16 v2, -0x100

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setMinHeight(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v10

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v2, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x4180

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v6, 0x10

    invoke-static {v6}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, -0xe48b45

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x3

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f80

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v8, Lcrittercism/android/aa;

    invoke-direct {v8, p0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v8, v7}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/4 v9, 0x1

    invoke-static {v9}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/16 v9, 0x26

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setHeight(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setTextColor(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/high16 v9, 0x4140

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setTextSize(F)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/4 v9, 0x5

    invoke-static {v9}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v8}, Lcrittercism/android/aa;->a()V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/4 v9, 0x6

    invoke-static {v9}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x7

    invoke-static {v10}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v10, 0x0

    const/16 v11, 0x28

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v11

    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v12

    invoke-static {v10, v11, v12}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setId(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v8, p0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcrittercism/android/aa;

    invoke-direct {v8, p0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v8, v7}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/4 v9, 0x1

    invoke-static {v9}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/16 v9, 0x26

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setHeight(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setTextColor(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/high16 v9, 0x4140

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setTextSize(F)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/4 v9, 0x6

    invoke-static {v9}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/4 v9, 0x6

    invoke-static {v9}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x7

    invoke-static {v10}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v10, 0x1

    const/16 v11, 0x28

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v11

    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v12

    invoke-static {v10, v11, v12}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setId(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v8, p0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcrittercism/android/aa;

    invoke-direct {v8, p0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v8, v7}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/4 v9, 0x1

    invoke-static {v9}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/16 v9, 0x26

    invoke-virtual {v0, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setHeight(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setTextColor(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/high16 v9, 0x4140

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setTextSize(F)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/4 v9, 0x7

    invoke-static {v9}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v8}, Lcrittercism/android/aa;->a()V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/4 v9, 0x6

    invoke-static {v9}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x7

    invoke-static {v10}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v10, 0x3

    const/16 v11, 0x28

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v11

    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v12

    invoke-static {v10, v11, v12}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcrittercism/android/aa;->setId(I)V

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v8, p0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcrittercism/android/aa;

    invoke-direct {v8, p0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    iget-object v8, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v8, v7}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/4 v8, 0x1

    invoke-static {v8}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/16 v8, 0x26

    invoke-virtual {v0, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcrittercism/android/aa;->setHeight(I)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Lcrittercism/android/aa;->setTextColor(I)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/high16 v8, 0x4140

    invoke-virtual {v7, v8}, Lcrittercism/android/aa;->setTextSize(F)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/16 v8, 0x8

    invoke-static {v8}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v7}, Lcrittercism/android/aa;->a()V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/4 v8, 0x6

    invoke-static {v8}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x2

    const/16 v10, 0x28

    invoke-virtual {v0, v10}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v10

    const/16 v11, 0x28

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v11

    invoke-static {v9, v10, v11}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcrittercism/android/aa;->setId(I)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v7, p0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x3

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getId()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xe

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x3

    invoke-static {v6}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x28

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setHeight(I)V

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v0, 0x4180

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v0, 0x2d

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->c:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->performClick()Z

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/crittercism/FeedbackCreateActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/crittercism/FeedbackCreateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_4
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "love"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->d:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->performClick()Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "question"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->e:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->performClick()Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "idea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->f:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->performClick()Z

    goto :goto_1

    :array_0
    .array-data 0x4
        0xcct 0x99t 0x0t 0xfft
        0xe6t 0xe6t 0xe6t 0xfft
    .end array-data
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/y;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    invoke-virtual {v0}, Lcrittercism/android/y;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcrittercism/android/y;

    invoke-direct {v0, p0}, Lcrittercism/android/y;-><init>(Lcom/crittercism/FeedbackCreateActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    iget-object v0, p0, Lcom/crittercism/FeedbackCreateActivity;->g:Lcrittercism/android/y;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcrittercism/android/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
