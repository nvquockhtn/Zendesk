.class public Lcom/zendesk/android/ticket/editors/EditDateActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "EditDateActivity.java"


# static fields
.field private static final DATE_DIALOG_ID:I = 0x1


# instance fields
.field private date:Lcom/zendesk/api/model/shared/ZDDate;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity$1;-><init>(Lcom/zendesk/android/ticket/editors/EditDateActivity;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method private getConstructorListener()Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->hasJellyBeanAndAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    goto :goto_0
.end method

.method private static hasJellyBeanAndAbove()Z
    .locals 2

    .prologue
    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 36
    sget v0, Lcom/zendesk/android/R$layout;->activity_edit_date:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->setContentView(I)V

    .line 39
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public loginSuccess()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    .local v2, ticketId:Ljava/lang/Long;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/zendesk/api/model/cache/TicketCache;->getTicket(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 51
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ticketFieldId"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 52
    .local v1, ticketFieldId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3, v1}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketFieldEntry(Ljava/lang/Long;)Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 54
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 55
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v3

    sget-object v4, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v3, v4, :cond_1

    .line 58
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getDueDateField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/shared/ZDDate;

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    .line 60
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    if-nez v3, :cond_0

    .line 61
    new-instance v3, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v3}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    .line 74
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->showDialog(I)V

    .line 75
    return-void

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->ticketFieldEntry:Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, dateString:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 68
    new-instance v3, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v3}, Lcom/zendesk/api/model/shared/ZDDate;-><init>()V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    goto :goto_0

    .line 70
    :cond_2
    new-instance v3, Lcom/zendesk/api/model/shared/ZDDate;

    invoke-direct {v3, v0}, Lcom/zendesk/api/model/shared/ZDDate;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 145
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->getConstructorListener()Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    invoke-virtual {v1}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    invoke-virtual {v1}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity;->date:Lcom/zendesk/api/model/shared/ZDDate;

    invoke-virtual {v1}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 116
    .local v0, picker:Landroid/app/DatePickerDialog;
    invoke-static {}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->hasJellyBeanAndAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;-><init>(Lcom/zendesk/android/ticket/editors/EditDateActivity;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    const/4 v1, -0x2

    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zendesk/android/ticket/editors/EditDateActivity$3;

    invoke-direct {v3, p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity$3;-><init>(Lcom/zendesk/android/ticket/editors/EditDateActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    :cond_0
    new-instance v1, Lcom/zendesk/android/ticket/editors/EditDateActivity$4;

    invoke-direct {v1, p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity$4;-><init>(Lcom/zendesk/android/ticket/editors/EditDateActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 159
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->finish()V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected setupView()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
