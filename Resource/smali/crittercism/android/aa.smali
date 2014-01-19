.class public final Lcrittercism/android/aa;
.super Lcrittercism/android/q;


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcrittercism/android/q;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/aa;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x5

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v1

    invoke-virtual {v0, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    invoke-virtual {v0, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcrittercism/android/aa;->setPadding(IIII)V

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcrittercism/android/aa;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/aa;->c:Z

    iget-object v0, p0, Lcrittercism/android/aa;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcrittercism/android/aa;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcrittercism/android/aa;->invalidate()V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 2

    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    iget-boolean v1, p0, Lcrittercism/android/aa;->c:Z

    if-eqz v1, :cond_0

    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    :cond_0
    return-object v0
.end method

.method public final performClick()Z
    .locals 2

    iget-object v0, p0, Lcrittercism/android/aa;->a:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcrittercism/android/aa;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/aa;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/aa;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcrittercism/android/aa;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-boolean v0, p0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcrittercism/android/aa;->c:Z

    invoke-super {p0}, Lcrittercism/android/q;->performClick()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
