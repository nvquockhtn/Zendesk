.class Lcom/zendesk/android/ticket/editors/EditDateActivity$4;
.super Ljava/lang/Object;
.source "EditDateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/EditDateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/EditDateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$4;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$4;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->finish()V

    .line 141
    return-void
.end method
