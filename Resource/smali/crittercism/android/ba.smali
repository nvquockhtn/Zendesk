.class public final Lcrittercism/android/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ba;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ba;->a:Lcom/crittercism/FeedbackActivity;

    invoke-virtual {v0}, Lcom/crittercism/FeedbackActivity;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
