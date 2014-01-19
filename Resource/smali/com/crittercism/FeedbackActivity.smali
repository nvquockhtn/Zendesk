.class public Lcom/crittercism/FeedbackActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Lcrittercism/android/ad;

.field public c:Landroid/widget/ListView;

.field public d:Z

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Lcrittercism/android/ab;

.field private h:Lcrittercism/android/aa;

.field private i:Lcrittercism/android/aa;

.field private j:Lcrittercism/android/aa;

.field private k:Lcrittercism/android/aa;

.field private l:Landroid/text/TextWatcher;

.field private m:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/FeedbackActivity;->d:Z

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    new-instance v0, Lcrittercism/android/ar;

    invoke-direct {v0, p0}, Lcrittercism/android/ar;-><init>(Lcom/crittercism/FeedbackActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackActivity;->l:Landroid/text/TextWatcher;

    new-instance v0, Lcrittercism/android/bh;

    invoke-direct {v0, p0}, Lcrittercism/android/bh;-><init>(Lcom/crittercism/FeedbackActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcrittercism/android/ab;

    invoke-direct {v0, p1}, Lcrittercism/android/ab;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    invoke-virtual {v0, p1}, Lcrittercism/android/ab;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/FeedbackActivity;->d:Z

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "love"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcrittercism/android/ab;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcrittercism/android/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/crittercism/FeedbackCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.crittercism.feedback"

    iget-object v2, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/crittercism/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->g:Lcrittercism/android/ab;

    invoke-virtual {v1, v0}, Lcrittercism/android/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "com.crittercism.feedback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    const-string v2, "com.crittercism.feedback"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    :cond_1
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz v0, :cond_3

    const-string v1, "com.crittercism.feedback_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "com.crittercism.feedback_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/ab;

    invoke-virtual {v1}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/crittercism/FeedbackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

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

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/crittercism/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcrittercism/android/ao;

    invoke-direct {v3, v0, v4}, Lcrittercism/android/ao;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    invoke-virtual {v0, v4}, Lcrittercism/android/ab;->a(Z)V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    invoke-virtual {v0}, Lcrittercism/android/ab;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcrittercism/android/ao;

    invoke-direct {v3, v0, v5}, Lcrittercism/android/ao;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ab;

    invoke-virtual {v0, v5}, Lcrittercism/android/ab;->a(Z)V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "bug"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_2

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

    iget-object v2, p0, Lcom/crittercism/FeedbackActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v1}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/FeedbackActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "question"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    iget-boolean v0, v0, Lcrittercism/android/aa;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    invoke-virtual {v0}, Lcrittercism/android/aa;->b()V

    const-string v0, "idea"

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/crittercism/FeedbackActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/crittercism/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v11

    new-instance v12, Lcrittercism/android/aw;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v12, v0, v1}, Lcrittercism/android/aw;-><init>(Lcom/crittercism/FeedbackActivity;Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v2}, Lcrittercism/android/aw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v13

    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v13, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xd

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->l:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    new-instance v3, Lcrittercism/android/ba;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/ba;-><init>(Lcom/crittercism/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    new-instance v3, Lcrittercism/android/az;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/az;-><init>(Lcom/crittercism/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    new-instance v3, Lcrittercism/android/ay;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/ay;-><init>(Lcom/crittercism/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x14

    invoke-virtual {v13, v2}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v2, v5}, Landroid/widget/Button;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    new-instance v3, Lcrittercism/android/ax;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/ax;-><init>(Lcom/crittercism/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->f:Landroid/widget/Button;

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v13, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Lcrittercism/android/ac;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcrittercism/android/ac;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    const/high16 v3, 0x3e80

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v3, Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    invoke-virtual {v3, v2}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/4 v4, 0x1

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/16 v4, 0x26

    invoke-virtual {v13, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/4 v4, 0x5

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/4 v4, 0x6

    invoke-static {v4}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-virtual {v13, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/16 v7, 0x28

    invoke-virtual {v13, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    invoke-virtual {v3}, Lcrittercism/android/aa;->a()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    invoke-virtual {v3, v2}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/4 v4, 0x1

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/16 v4, 0x26

    invoke-virtual {v13, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/4 v4, 0x6

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/4 v4, 0x6

    invoke-static {v4}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    const/16 v6, 0x28

    invoke-virtual {v13, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/16 v7, 0x28

    invoke-virtual {v13, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    invoke-virtual {v3}, Lcrittercism/android/aa;->a()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    invoke-virtual {v3, v2}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/4 v4, 0x1

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/16 v4, 0x26

    invoke-virtual {v13, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/high16 v4, 0x4140

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/4 v4, 0x7

    invoke-static {v4}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/4 v4, 0x6

    invoke-static {v4}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x3

    const/16 v6, 0x28

    invoke-virtual {v13, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    const/16 v7, 0x28

    invoke-virtual {v13, v7}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcrittercism/android/aa;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    invoke-virtual {v3}, Lcrittercism/android/aa;->a()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcrittercism/android/aa;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    invoke-virtual {v3, v2}, Lcrittercism/android/aa;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/4 v3, 0x1

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/16 v3, 0x26

    invoke-virtual {v13, v3}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcrittercism/android/aa;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Lcrittercism/android/aa;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Lcrittercism/android/aa;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/16 v3, 0x8

    invoke-static {v3}, Lcrittercism/android/as;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcrittercism/android/aa;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/4 v3, 0x6

    invoke-static {v3}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Lcrittercism/android/as;->c(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcrittercism/android/aa;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x2

    const/16 v5, 0x28

    invoke-virtual {v13, v5}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v5

    const/16 v6, 0x28

    invoke-virtual {v13, v6}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcrittercism/android/as;->a(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcrittercism/android/aa;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcrittercism/android/aa;->setId(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    invoke-virtual {v2}, Lcrittercism/android/aa;->a()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcrittercism/android/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->h:Lcrittercism/android/aa;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->i:Lcrittercism/android/aa;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->j:Lcrittercism/android/aa;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->k:Lcrittercism/android/aa;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x23

    invoke-virtual {v11, v4}, Lcom/crittercism/app/Crittercism;->a(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    const/high16 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    new-instance v3, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setId(I)V

    invoke-static/range {p0 .. p0}, Lcrittercism/android/o;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v12, v14}, Lcrittercism/android/aw;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v2}, Lcrittercism/android/aw;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v3}, Lcrittercism/android/aw;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v4}, Lcrittercism/android/aw;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/crittercism/FeedbackActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/crittercism/FeedbackActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/crittercism/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crittercism/FeedbackActivity;->c:Landroid/widget/ListView;

    new-instance v2, Lcrittercism/android/ad;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcrittercism/android/ad;-><init>(Lcom/crittercism/FeedbackActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcrittercism/android/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v2, "Crittercism"

    const-string v3, "Crittercism Help Desk Launched."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x52t 0x8dt 0x64t 0xfft
        0x73t 0xact 0x7bt 0xfft
    .end array-data
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/ad;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    invoke-virtual {v0}, Lcrittercism/android/ad;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcrittercism/android/ad;

    invoke-direct {v0, p0}, Lcrittercism/android/ad;-><init>(Lcom/crittercism/FeedbackActivity;)V

    iput-object v0, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    iget-object v0, p0, Lcom/crittercism/FeedbackActivity;->b:Lcrittercism/android/ad;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcrittercism/android/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
