.class Lcom/zendesk/android/ticket/editors/EditDateActivity$1;
.super Ljava/lang/Object;
.source "EditDateActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/editors/EditDateActivity;
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
    .line 84
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 89
    new-instance v0, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v0}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    .line 90
    .local v0, date:Lcom/zendesk/api/model/shared/ZDDate;
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 91
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 92
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/ZDDate;->invalidateFormattedStrings()V

    .line 94
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    invoke-static {v1}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->access$000(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;
    invoke-static {v1}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->access$100(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->setResult(I)V

    .line 100
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    invoke-static {v1}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->access$000(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    const-string v2, "yyyy/MM/dd HH:mm:ss Z"

    invoke-virtual {v0, v2}, Lcom/zendesk/api/model/shared/ZDDate;->getFormattedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->setEditedValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
