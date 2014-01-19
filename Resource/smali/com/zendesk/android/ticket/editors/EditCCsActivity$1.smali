.class Lcom/zendesk/android/ticket/editors/EditCCsActivity$1;
.super Ljava/lang/Object;
.source "EditCCsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/EditCCsActivity;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/EditCCsActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/EditCCsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditCCsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditCCsActivity;

    #calls: Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finishEntry()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->access$000(Lcom/zendesk/android/ticket/editors/EditCCsActivity;)V

    .line 45
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditCCsActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditCCsActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/editors/EditCCsActivity;->finish()V

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
