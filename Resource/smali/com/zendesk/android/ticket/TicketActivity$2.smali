.class Lcom/zendesk/android/ticket/TicketActivity$2;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/TicketActivity;->createIU(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/TicketActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/TicketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zendesk/android/ticket/TicketActivity$2;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zendesk/android/ticket/TicketActivity$2;->this$0:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0, p1}, Lcom/zendesk/android/ticket/TicketActivity;->createComment(Landroid/view/View;)V

    .line 125
    return-void
.end method
