.class public final Lcrittercism/android/ap;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/crittercism/NotificationActivity;


# direct methods
.method public constructor <init>(Lcom/crittercism/NotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcrittercism/android/ap;->a:Lcom/crittercism/NotificationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/ap;->a:Lcom/crittercism/NotificationActivity;

    iget-object v0, v0, Lcom/crittercism/NotificationActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ap;->a:Lcom/crittercism/NotificationActivity;

    iget-object v0, v0, Lcom/crittercism/NotificationActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ap;->a:Lcom/crittercism/NotificationActivity;

    iget-object v0, v0, Lcom/crittercism/NotificationActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcrittercism/android/ap;->a:Lcom/crittercism/NotificationActivity;

    iget-object v0, v0, Lcom/crittercism/NotificationActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
