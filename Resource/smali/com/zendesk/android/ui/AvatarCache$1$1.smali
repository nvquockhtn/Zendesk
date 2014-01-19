.class Lcom/zendesk/android/ui/AvatarCache$1$1;
.super Ljava/lang/Object;
.source "AvatarCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ui/AvatarCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zendesk/android/ui/AvatarCache$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ui/AvatarCache$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zendesk/android/ui/AvatarCache$1$1;->this$1:Lcom/zendesk/android/ui/AvatarCache$1;

    iput-object p2, p0, Lcom/zendesk/android/ui/AvatarCache$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zendesk/android/ui/AvatarCache$1$1;->this$1:Lcom/zendesk/android/ui/AvatarCache$1;

    iget-object v0, v0, Lcom/zendesk/android/ui/AvatarCache$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zendesk/android/ui/AvatarCache$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    return-void
.end method
