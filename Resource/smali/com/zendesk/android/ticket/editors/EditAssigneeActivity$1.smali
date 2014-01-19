.class Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;
.super Ljava/lang/Object;
.source "EditAssigneeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->prepareAssignee()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity.1;"
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;,"Lcom/zendesk/android/ticket/editors/EditAssigneeActivity.1;"
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/users/User;

    .line 86
    .local v0, u:Lcom/zendesk/api/model/users/User;
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v1}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->access$000(Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getAssigneeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->setResult(I)V

    .line 88
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;->finish()V

    .line 89
    return-void
.end method
