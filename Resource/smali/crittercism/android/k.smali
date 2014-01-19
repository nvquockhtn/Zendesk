.class public final Lcrittercism/android/k;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/crittercism/FeedbackActivity;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcrittercism/android/k;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcrittercism/android/k;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    iget-object v0, p0, Lcrittercism/android/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcrittercism/android/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/aq;

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcrittercism/android/k;->a:Lcom/crittercism/FeedbackActivity;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v2

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x3f80

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x28

    invoke-virtual {v2, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f80

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, -0x100

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x4180

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x22

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setId(I)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v7, 0x4140

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x24

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setId(I)V

    const v7, -0x99999a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v9, 0x1

    const/16 v10, 0x24

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v8, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x4140

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x23

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setId(I)V

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v2, -0x9b72ae

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v2

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-virtual {v2, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v7, 0x4140

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Lcrittercism/android/q;

    invoke-direct {v7, v1}, Lcrittercism/android/q;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Lcrittercism/android/q;->setId(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x1c

    invoke-virtual {v2, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    const/16 v10, 0x28

    invoke-virtual {v2, v10}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x3

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0x28

    invoke-virtual {v2, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcrittercism/android/q;->setMinimumHeight(I)V

    const/16 v9, 0x1c

    invoke-virtual {v2, v9}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcrittercism/android/q;->setMinimumWidth(I)V

    invoke-virtual {v7, v8}, Lcrittercism/android/q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-static {v2}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v8, 0x9

    invoke-static {v8}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcrittercism/android/q;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v1}, Lcrittercism/android/q;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x4180

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x25

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcrittercism/android/aq;

    invoke-direct {v2}, Lcrittercism/android/aq;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcrittercism/android/aq;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x21

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcrittercism/android/aq;->b:Landroid/widget/ImageView;

    const/16 v1, 0x22

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcrittercism/android/aq;->c:Landroid/widget/TextView;

    const/16 v1, 0x23

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    const/16 v1, 0x24

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    const/16 v1, 0x25

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcrittercism/android/aq;->f:Landroid/widget/TextView;

    const/16 v1, 0x27

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcrittercism/android/aq;->g:Landroid/widget/TextView;

    const/16 v1, 0x29

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcrittercism/android/q;

    iput-object v1, v2, Lcrittercism/android/aq;->h:Lcrittercism/android/q;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_2
    iget-object v2, v1, Lcrittercism/android/aq;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcrittercism/android/aq;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, v1, Lcrittercism/android/aq;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcrittercism/android/aq;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v2, v1, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, v1, Lcrittercism/android/aq;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcrittercism/android/aq;->f:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v2, v1, Lcrittercism/android/aq;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcrittercism/android/aq;->g:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v2, v1, Lcrittercism/android/aq;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcrittercism/android/aq;->f:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_9
    iget-object v2, v1, Lcrittercism/android/aq;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcrittercism/android/aq;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcrittercism/android/ab;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/as;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v2, v1, Lcrittercism/android/aq;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcrittercism/android/aq;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v2, v1, Lcrittercism/android/aq;->g:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcrittercism/android/aq;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcrittercism/android/ab;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v2, v1, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcrittercism/android/ab;->f()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcrittercism/android/ab;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v0}, Lcrittercism/android/ab;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Lcrittercism/android/ab;->h()I

    move-result v3

    if-le v2, v3, :cond_d

    invoke-virtual {v0}, Lcrittercism/android/ab;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Lcrittercism/android/ab;->h()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    iget-object v2, v1, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_0
    iget-object v2, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcrittercism/android/ab;->h()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v0}, Lcrittercism/android/ab;->h()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    iget-object v0, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v0

    iget-object v2, v1, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_2
    iget-object v0, v1, Lcrittercism/android/aq;->h:Lcrittercism/android/q;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcrittercism/android/aq;->h:Lcrittercism/android/q;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcrittercism/android/q;->setTag(Ljava/lang/Object;)V

    :cond_f
    iget-object v0, v1, Lcrittercism/android/aq;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcrittercism/android/aq;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcrittercism/android/f;

    invoke-direct {v1, p0}, Lcrittercism/android/f;-><init>(Lcrittercism/android/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    move-object v0, p2

    :goto_3
    if-nez v0, :cond_11

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcrittercism/android/k;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_11
    return-object v0

    :cond_12
    iget-object v3, v1, Lcrittercism/android/aq;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%d "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x11

    invoke-static {v5}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    iget-object v2, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%d "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x13

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcrittercism/android/ab;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_14
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x1

    const/16 v4, 0x24

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, v1, Lcrittercism/android/aq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_15
    move-object v0, p2

    goto :goto_3

    :array_0
    .array-data 0x4
        0xe6t 0xe6t 0xe6t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
