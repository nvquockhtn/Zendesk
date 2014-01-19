.class public final Lcrittercism/android/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crittercism/FeedbackCreateActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/FeedbackCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/x;->a:Lcom/crittercism/FeedbackCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crittercism/app/Crittercism;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/crittercism/app/Crittercism;->a()Lcom/crittercism/app/Crittercism;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/x;->a:Lcom/crittercism/FeedbackCreateActivity;

    invoke-virtual {v1, v0}, Lcom/crittercism/FeedbackCreateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :pswitch_1
    iget-object v0, p0, Lcrittercism/android/x;->a:Lcom/crittercism/FeedbackCreateActivity;

    invoke-virtual {v0}, Lcom/crittercism/FeedbackCreateActivity;->a()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/x;->a:Lcom/crittercism/FeedbackCreateActivity;

    invoke-virtual {v0}, Lcom/crittercism/FeedbackCreateActivity;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
