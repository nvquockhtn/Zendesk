.class public Lcrittercism/android/q;
.super Landroid/widget/Button;


# instance fields
.field a:Landroid/graphics/drawable/StateListDrawable;

.field b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcrittercism/android/q;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcrittercism/android/q;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcrittercism/android/q;->b:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    iget-object v3, p0, Lcrittercism/android/q;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iget-object v2, p0, Lcrittercism/android/q;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcrittercism/android/q;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcrittercism/android/q;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
