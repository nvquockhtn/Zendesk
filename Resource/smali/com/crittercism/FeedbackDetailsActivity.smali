.class public Lcom/crittercism/FeedbackDetailsActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lcrittercism/android/ab;

.field private b:Z

.field private c:Lcrittercism/android/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->b:Z

    iput-object v1, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 26

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v5

    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-direct {v6, v10, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v6

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x5

    invoke-virtual {v6, v12}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v6, v13}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v13

    const/4 v14, 0x5

    invoke-virtual {v6, v14}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v14

    const/4 v15, 0x5

    invoke-virtual {v6, v15}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v15

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v12, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v13, 0x2

    new-array v13, v13, [I

    fill-array-data v13, :array_1

    invoke-direct {v11, v12, v13}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x3

    invoke-virtual {v6, v13}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v13

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x4180

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v12, -0x100

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v15

    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v16, 0xa

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v15, 0x3c

    invoke-virtual {v6, v15}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/16 v15, 0x3c

    invoke-virtual {v6, v15}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setId(I)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/16 v15, 0xc

    invoke-static {v15}, Lcrittercism/android/as;->b(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v17, 0x3

    const/16 v18, 0x10

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v16, 0x4140

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v16, -0x100

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v16, 0x35

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    const/16 v18, 0x7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    aput v16, v17, v18

    new-instance v16, Lcrittercism/android/ak;

    new-instance v18, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcrittercism/android/ak;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual/range {v16 .. v16}, Lcrittercism/android/ak;->getPaint()Landroid/graphics/Paint;

    move-result-object v17

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f80

    invoke-virtual {v6}, Lcom/crittercism/app/Crittercism;->e()F

    move-result v19

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v17, 0x4180

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v17, 0x13

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setId(I)V

    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v17, 0x37

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v19

    const/16 v20, 0x78

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x14

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setId(I)V

    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x28

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v19

    const/16 v20, 0x28

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v20

    invoke-direct/range {v18 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v19, 0x12

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, 0x73

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v22

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v21

    add-int v16, v16, v21

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v16, 0x8

    const/16 v21, 0x13

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v16, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v21, 0x3f80

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v22, 0x0

    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v25

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v21, 0x15

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setId(I)V

    const/high16 v21, 0x4180

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 v21, 0x9

    invoke-static/range {v21 .. v21}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x50

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setHeight(I)V

    const/16 v21, 0x64

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setMinimumWidth(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v20, 0x0

    const/16 v21, 0x1e

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v6

    new-instance v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v20, Lcrittercism/android/q;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcrittercism/android/q;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x16

    invoke-virtual/range {v20 .. v21}, Lcrittercism/android/q;->setId(I)V

    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, 0x28

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v22

    const/16 v23, 0x46

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual/range {v20 .. v21}, Lcrittercism/android/q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x8

    invoke-static {v6}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v6

    const/16 v21, 0x9

    invoke-static/range {v21 .. v21}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcrittercism/android/q;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcrittercism/android/q;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v22, 0xe

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v20}, Lcrittercism/android/q;->getId()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v21, 0x4180

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v21, 0x17

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    const/high16 v21, -0x100

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v6, 0xf

    invoke-virtual {v10, v6}, Landroid/view/View;->setId(I)V

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x3

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x23

    invoke-virtual {v5, v14}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    invoke-virtual {v11, v6, v12, v13, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x1b

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v5}, Lcrittercism/android/ab;->g()I

    move-result v12

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-lt v6, v12, :cond_1

    :cond_0
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v12, -0x2

    invoke-direct {v5, v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v9, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-static/range {p0 .. p0}, Lcrittercism/android/o;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v7

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v5}, Lcrittercism/android/ab;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcrittercism/android/ah;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/crittercism/FeedbackDetailsActivity;->a(Lcrittercism/android/ah;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0xcct 0xcct 0xcct 0xfft
        0xe6t 0xe6t 0xe6t 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0xe6t 0xe6t 0xe6t 0xfft
        0xcct 0xcct 0xcct 0xfft
    .end array-data
.end method

.method private a(Lcrittercism/android/ah;)Landroid/view/View;
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, -0x2

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    new-array v5, v11, [F

    const/4 v6, 0x0

    int-to-float v7, v4

    aput v7, v5, v6

    int-to-float v6, v4

    aput v6, v5, v12

    const/4 v6, 0x2

    int-to-float v7, v4

    aput v7, v5, v6

    const/4 v6, 0x3

    int-to-float v7, v4

    aput v7, v5, v6

    const/4 v6, 0x4

    int-to-float v7, v4

    aput v7, v5, v6

    int-to-float v6, v4

    aput v6, v5, v13

    const/4 v6, 0x6

    int-to-float v7, v4

    aput v7, v5, v6

    const/4 v6, 0x7

    int-to-float v4, v4

    aput v4, v5, v6

    new-instance v4, Lcrittercism/android/ak;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v4, v6}, Lcrittercism/android/ak;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iget-object v5, v4, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    const/high16 v6, 0x3f80

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->e()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcrittercism/android/ah;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v4, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    const v6, -0x9b72ae

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lcrittercism/android/ak;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const v6, -0x9b72ae

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x4180

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/16 v4, 0x48

    invoke-virtual {v0, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1}, Lcrittercism/android/ah;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v11}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v12}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v7, 0x3

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcrittercism/android/ah;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x1d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {p1}, Lcrittercism/android/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcrittercism/android/as;->b(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    const/16 v7, 0x1d

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x4140

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v5, -0x100

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x36

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {p1}, Lcrittercism/android/ah;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    const/high16 v5, -0x100

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v4, Lcrittercism/android/ak;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Lcrittercism/android/ak;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0}, Lcrittercism/android/as;->b(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 3

    iget-boolean v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.crittercism.feedback_details"

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/crittercism/FeedbackDetailsActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/crittercism/NotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1040

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.crittercism.about_us"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    invoke-virtual {v0}, Lcrittercism/android/al;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    invoke-virtual {v0}, Lcrittercism/android/al;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    invoke-virtual {v0}, Lcrittercism/android/al;->show()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcrittercism/android/ao;

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcrittercism/android/ao;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0, v5}, Lcrittercism/android/ab;->a(Z)V

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iput-boolean v5, p0, Lcom/crittercism/FeedbackDetailsActivity;->b:Z

    goto :goto_0

    :sswitch_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcrittercism/android/ao;

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcrittercism/android/ao;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0, v3}, Lcrittercism/android/ab;->a(Z)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput-boolean v5, p0, Lcom/crittercism/FeedbackDetailsActivity;->b:Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    invoke-virtual {v0}, Lcrittercism/android/al;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    const-string v0, ""

    iget-object v2, v1, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    iget-object v0, v1, Lcrittercism/android/al;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    new-instance v2, Lcrittercism/android/ah;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/app/Crittercism;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crittercism/app/Crittercism;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcrittercism/android/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0, v2}, Lcrittercism/android/ab;->a(Lcrittercism/android/ah;)V

    iput-boolean v5, p0, Lcom/crittercism/FeedbackDetailsActivity;->b:Z

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/crittercism/FeedbackDetailsActivity;->a(Lcrittercism/android/ah;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcrittercism/android/h;

    invoke-direct {v2, p0, v1}, Lcrittercism/android/h;-><init>(Lcom/crittercism/FeedbackDetailsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    invoke-virtual {v0}, Lcrittercism/android/al;->dismiss()V

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x18 -> :sswitch_3
        0x31 -> :sswitch_4
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    if-eqz p1, :cond_0

    const-string v0, "com.crittercism.feedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.crittercism.feedback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    iput-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    :cond_0
    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/crittercism/FeedbackDetailsActivity;->getIntent()Landroid/content/Intent;

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

    iput-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    :cond_1
    invoke-direct {p0}, Lcom/crittercism/FeedbackDetailsActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    if-eqz v0, :cond_6

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v1}, Lcrittercism/android/ab;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v1}, Lcrittercism/android/ab;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcrittercism/android/as;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    new-instance v0, Lcrittercism/android/al;

    invoke-direct {v0, p0}, Lcrittercism/android/al;-><init>(Lcom/crittercism/FeedbackDetailsActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->c:Lcrittercism/android/al;

    return-void

    :cond_7
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v2}, Lcrittercism/android/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/crittercism/FeedbackDetailsActivity;->a:Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
