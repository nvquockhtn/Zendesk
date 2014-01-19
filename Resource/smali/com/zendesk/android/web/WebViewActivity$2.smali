.class Lcom/zendesk/android/web/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/web/WebViewActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/web/WebViewActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/web/WebViewActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zendesk/android/web/WebViewActivity$2;->this$0:Lcom/zendesk/android/web/WebViewActivity;

    iput-object p2, p0, Lcom/zendesk/android/web/WebViewActivity$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zendesk/android/web/WebViewActivity$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zendesk/android/web/WebViewActivity$2;->this$0:Lcom/zendesk/android/web/WebViewActivity;

    sget v3, Lcom/zendesk/android/R$string;->loading_msg:I

    invoke-virtual {v2, v3}, Lcom/zendesk/android/web/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/zendesk/android/web/WebViewActivity$2;->val$activity:Landroid/app/Activity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 47
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/zendesk/android/web/WebViewActivity$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zendesk/android/web/WebViewActivity$2;->this$0:Lcom/zendesk/android/web/WebViewActivity;

    #getter for: Lcom/zendesk/android/web/WebViewActivity;->pageTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/zendesk/android/web/WebViewActivity;->access$000(Lcom/zendesk/android/web/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "title"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/zendesk/android/web/WebViewActivity$2;->this$0:Lcom/zendesk/android/web/WebViewActivity;

    #setter for: Lcom/zendesk/android/web/WebViewActivity;->pageTitle:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/zendesk/android/web/WebViewActivity;->access$002(Lcom/zendesk/android/web/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    return-void
.end method
