.class public Lcom/zendesk/android/entry/EntryActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EntryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EntryActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 22
    sget v1, Lcom/zendesk/android/R$layout;->activity_entry:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/EntryActivity;->setContentView(I)V

    .line 23
    sget v1, Lcom/zendesk/android/R$id;->tiled_image:I

    invoke-virtual {p0, v1}, Lcom/zendesk/android/entry/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .local v0, activityView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 26
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public loggingIn()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public loginSuccess()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    const-string v0, "EntryActivity"

    const-string v1, "EntryActivity.onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    packed-switch p2, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/entry/EntryActivity;->finish()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onDestroy()V

    .line 70
    const-string v0, "EntryActivity"

    const-string v1, "EntryActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public startLogin(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/entry/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/entry/EntryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    return-void
.end method

.method public startRegistration(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/entry/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/entry/EntryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method
