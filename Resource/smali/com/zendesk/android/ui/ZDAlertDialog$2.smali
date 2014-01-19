.class Lcom/zendesk/android/ui/ZDAlertDialog$2;
.super Ljava/lang/Object;
.source "ZDAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ui/ZDAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ui/ZDAlertDialog;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ui/ZDAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zendesk/android/ui/ZDAlertDialog$2;->this$0:Lcom/zendesk/android/ui/ZDAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/zendesk/android/ui/ZDAlertDialog$2;->this$0:Lcom/zendesk/android/ui/ZDAlertDialog;

    invoke-virtual {v1}, Lcom/zendesk/android/ui/ZDAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    .local v0, fa:Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcom/zendesk/android/ui/ZDAlertUser;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lcom/zendesk/android/ui/ZDAlertUser;

    .end local v0           #fa:Landroid/support/v4/app/FragmentActivity;
    invoke-interface {v0}, Lcom/zendesk/android/ui/ZDAlertUser;->doNegativeClick()V

    .line 87
    :cond_0
    return-void
.end method
