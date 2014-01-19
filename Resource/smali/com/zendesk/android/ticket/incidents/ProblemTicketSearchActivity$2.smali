.class Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;
.super Lcom/zendesk/api/ZDAsyncTask;
.source "ProblemTicketSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->callSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    invoke-direct {p0}, Lcom/zendesk/api/ZDAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected responseFailed(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 90
    invoke-static {}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "responseFailed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    return-void
.end method

.method protected responseSuccess()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->access$200(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->adapter:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->access$200(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchAdapter;->notifyDataSetChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method protected run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$2;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->results:Lcom/zendesk/api/model/search/ProblemTicketSearch;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->access$000(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)Lcom/zendesk/api/model/search/ProblemTicketSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/model/search/ProblemTicketSearch;->refresh()V

    .line 79
    return-void
.end method
