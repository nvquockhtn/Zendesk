.class Lcom/zendesk/android/entry/RegisterActivity$2$1$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/entry/RegisterActivity$2$1;->responseFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;


# direct methods
.method constructor <init>(Lcom/zendesk/android/entry/RegisterActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$2;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$2;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v0, v0, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    #getter for: Lcom/zendesk/android/entry/RegisterActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zendesk/android/entry/RegisterActivity;->access$000(Lcom/zendesk/android/entry/RegisterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 228
    iget-object v0, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$2;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v0, v0, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v0, v0, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    iget-object v1, p0, Lcom/zendesk/android/entry/RegisterActivity$2$1$2;->this$2:Lcom/zendesk/android/entry/RegisterActivity$2$1;

    iget-object v1, v1, Lcom/zendesk/android/entry/RegisterActivity$2$1;->this$1:Lcom/zendesk/android/entry/RegisterActivity$2;

    iget-object v1, v1, Lcom/zendesk/android/entry/RegisterActivity$2;->this$0:Lcom/zendesk/android/entry/RegisterActivity;

    sget v2, Lcom/zendesk/android/R$string;->login_failed_msg:I

    invoke-virtual {v1, v2}, Lcom/zendesk/android/entry/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/zendesk/android/entry/RegisterActivity;->showDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zendesk/android/entry/RegisterActivity;->access$200(Lcom/zendesk/android/entry/RegisterActivity;Ljava/lang/String;)V

    .line 229
    return-void
.end method
