.class public final Lcrittercism/android/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/crittercism/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/bb;->a:Lcom/crittercism/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcrittercism/android/bb;->a:Lcom/crittercism/FeedbackActivity;

    iget-object v0, v0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcrittercism/android/bb;->a:Lcom/crittercism/FeedbackActivity;

    const-class v3, Lcom/crittercism/FeedbackDetailsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.crittercism.feedback"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcrittercism/android/bb;->a:Lcom/crittercism/FeedbackActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/crittercism/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
