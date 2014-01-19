.class Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$1;
.super Ljava/lang/Object;
.source "ProblemTicketSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->createIU(Landroid/os/Bundle;)V
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
    .line 39
    iput-object p1, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    #getter for: Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->results:Lcom/zendesk/api/model/search/ProblemTicketSearch;
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->access$000(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)Lcom/zendesk/api/model/search/ProblemTicketSearch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/search/ProblemTicketSearch;->setQuery(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity$1;->this$0:Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;

    #calls: Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->callSearch()V
    invoke-static {v0}, Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;->access$100(Lcom/zendesk/android/ticket/incidents/ProblemTicketSearchActivity;)V

    .line 59
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 50
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 44
    return-void
.end method
