.class Lcom/zendesk/android/copy/CopyActivity$1;
.super Landroid/webkit/WebViewClient;
.source "CopyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/copy/CopyActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/copy/CopyActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/copy/CopyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zendesk/android/copy/CopyActivity$1;->this$0:Lcom/zendesk/android/copy/CopyActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
