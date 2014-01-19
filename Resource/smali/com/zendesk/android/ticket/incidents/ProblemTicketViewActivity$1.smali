.class Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$1;
.super Ljava/lang/Object;
.source "ProblemTicketViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;

    #calls: Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->unlinkTicketFromProblem()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;->access$000(Lcom/zendesk/android/ticket/incidents/ProblemTicketViewActivity;)V

    .line 118
    return-void
.end method
