.class public final Lcrittercism/android/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ay;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcrittercism/android/ay;->a:Lcom/crittercism/FeedbackActivity;

    invoke-virtual {v0}, Lcom/crittercism/FeedbackActivity;->a()V

    :cond_0
    return-void
.end method
