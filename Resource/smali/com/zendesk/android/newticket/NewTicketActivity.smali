.class public Lcom/zendesk/android/newticket/NewTicketActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "NewTicketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zendesk/android/ui/ZDAlertUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "NewTicketActivity"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isLoading:Z

.field protected loadingArea:Landroid/widget/RelativeLayout;

.field protected loadingMsg:Landroid/widget/TextView;

.field protected progressBarIndeterminate:Landroid/widget/ProgressBar;

.field protected progressBarProgress:Landroid/widget/ProgressBar;

.field private scrollView:Landroid/widget/LinearLayout;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/newticket/NewTicketActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V

    return-void
.end method

.method private addHeader(Ljava/lang/String;)V
    .locals 5
    .parameter "headerTitle"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/zendesk/android/R$layout;->new_ticket_section_header:I

    iget-object v3, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->scrollView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 214
    .local v0, header:Landroid/widget/LinearLayout;
    sget v1, Lcom/zendesk/android/R$id;->ticket_subheader_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method private applyMacro(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 317
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V

    .line 319
    const-string v2, "macroId"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 321
    .local v0, macroId:Ljava/lang/Long;
    new-instance v1, Lcom/zendesk/api/model/macros/MacroResult;

    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-direct {v1, v0, v2}, Lcom/zendesk/api/model/macros/MacroResult;-><init>(Ljava/lang/Long;Lcom/zendesk/api/model/ticket/Ticket;)V

    .line 323
    .local v1, mr:Lcom/zendesk/api/model/macros/MacroResult;
    new-instance v2, Lcom/zendesk/android/newticket/NewTicketActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/zendesk/android/newticket/NewTicketActivity$1;-><init>(Lcom/zendesk/android/newticket/NewTicketActivity;Lcom/zendesk/api/model/macros/MacroResult;)V

    .line 344
    .end local v0           #macroId:Ljava/lang/Long;
    .end local v1           #mr:Lcom/zendesk/api/model/macros/MacroResult;
    :cond_0
    return-void
.end method

.method private companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V
    .locals 10
    .parameter
    .parameter "parent"
    .parameter "companion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;>;",
            "Lcom/zendesk/api/model/account/TicketType;",
            "Lcom/zendesk/api/model/account/TicketFieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    const/4 v9, -0x1

    .line 179
    iget-object v7, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 180
    iget-object v7, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 181
    .local v6, ticketTypeApiValue:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 182
    const/4 v5, -0x1

    .local v5, taskPostition:I
    const/4 v2, -0x1

    .line 183
    .local v2, dueDatePosition:I
    const/4 v1, 0x0

    .line 184
    .local v1, dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 186
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 188
    .local v3, field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    sget-object v8, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-virtual {v7, v8}, Lcom/zendesk/api/model/account/TicketFieldType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v7

    :goto_2
    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, apiValue:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    move v5, v4

    .line 195
    .end local v0           #apiValue:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/zendesk/api/model/account/TicketFieldType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    move v2, v4

    .line 197
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    check-cast v1, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 200
    .restart local v1       #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_1
    if-le v5, v9, :cond_6

    if-le v2, v9, :cond_6

    .line 205
    .end local v3           #field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_2
    if-eq v5, v9, :cond_3

    add-int/lit8 v7, v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    if-eqz v1, :cond_3

    .line 206
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p1, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    .end local v1           #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .end local v2           #dueDatePosition:I
    .end local v4           #i:I
    .end local v5           #taskPostition:I
    .end local v6           #ticketTypeApiValue:Ljava/lang/String;
    :cond_3
    return-void

    .line 180
    :cond_4
    iget-object v7, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    goto :goto_0

    .line 190
    .restart local v1       #dueDateField:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .restart local v2       #dueDatePosition:I
    .restart local v3       #field:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .restart local v4       #i:I
    .restart local v5       #taskPostition:I
    .restart local v6       #ticketTypeApiValue:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 184
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private shouldIgnore(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/api/model/ticket/TicketFieldEntry",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    const/4 v3, 0x1

    .line 158
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    .line 175
    :goto_0
    return v2

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v0

    .line 161
    .local v0, tft:Lcom/zendesk/api/model/account/TicketFieldType;
    const/4 v1, 0x0

    .line 162
    .local v1, ticketAPIValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 166
    :cond_1
    :goto_1
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 167
    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1

    .line 169
    :cond_3
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_4

    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 170
    goto :goto_0

    .line 172
    :cond_4
    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v2}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    .line 173
    goto :goto_0

    .line 175
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showMacros()V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zendesk/android/macros/MacrosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x7d8

    invoke-virtual {p0, v0, v1}, Lcom/zendesk/android/newticket/NewTicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 481
    return-void
.end method

.method private startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V
    .locals 3
    .parameter "tf"
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 284
    const-string v1, "ticketFieldId"

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0, p3}, Lcom/zendesk/android/newticket/NewTicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method private startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;ILjava/lang/String;)V
    .locals 3
    .parameter "tf"
    .parameter "activity"
    .parameter "requestCode"
    .parameter "overrideTitle"

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    const-string v1, "ticketFieldId"

    invoke-virtual {p1}, Lcom/zendesk/api/model/account/TicketField;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 292
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 293
    const-string v1, "otitle"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/zendesk/android/newticket/NewTicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    return-void
.end method

.method private toggleLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-boolean v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->isLoading:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 408
    iput-boolean v2, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->isLoading:Z

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->isLoading:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelEdits(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 442
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/zendesk/api/model/cache/TicketCache;->newTicketComplete()V

    .line 443
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->finish()V

    .line 444
    return-void
.end method

.method public createIU(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    sget v0, Lcom/zendesk/android/R$layout;->activity_new_ticket:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->setContentView(I)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->displayBackUp(Z)V

    .line 74
    sget v0, Lcom/zendesk/android/R$string;->new_ticket_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->setTitle(I)V

    .line 76
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->inflater:Landroid/view/LayoutInflater;

    .line 77
    sget v0, Lcom/zendesk/android/R$id;->ticket_loading:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    sget v1, Lcom/zendesk/android/R$id;->loading_progressbar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    .line 80
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    sget v1, Lcom/zendesk/android/R$id;->loading_progress_bar_progress:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    .line 81
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    sget v1, Lcom/zendesk/android/R$id;->loading_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingMsg:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/zendesk/android/R$id;->ticket_properties_scrollviewcontent:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->scrollView:Landroid/widget/LinearLayout;

    .line 83
    return-void
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public isLoggingIn()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public loginError()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public loginSuccess()V
    .locals 14

    .prologue
    .line 92
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingArea:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/ZendeskModel;->getTicketCache()Lcom/zendesk/api/model/cache/TicketCache;

    move-result-object v10

    invoke-interface {v10}, Lcom/zendesk/api/model/cache/TicketCache;->getNewTicket()Lcom/zendesk/api/model/ticket/Ticket;

    move-result-object v10

    iput-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 95
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 97
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket;->getAllTicketFieldEntries()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;>;"
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 100
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 101
    .local v6, ticketTypeApiValue:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    sget-object v10, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v10}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 102
    sget-object v10, Lcom/zendesk/api/model/account/TicketType;->TASK:Lcom/zendesk/api/model/account/TicketType;

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-direct {p0, v1, v10, v11}, Lcom/zendesk/android/newticket/NewTicketActivity;->companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 104
    :cond_0
    if-eqz v6, :cond_1

    sget-object v10, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v10}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 105
    sget-object v10, Lcom/zendesk/api/model/account/TicketType;->INCIDENT:Lcom/zendesk/api/model/account/TicketType;

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETPROBLEM:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-direct {p0, v1, v10, v11}, Lcom/zendesk/android/newticket/NewTicketActivity;->companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 107
    :cond_1
    if-eqz v6, :cond_2

    sget-object v10, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    invoke-virtual {v10}, Lcom/zendesk/api/model/account/TicketType;->getApiVal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 108
    sget-object v10, Lcom/zendesk/api/model/account/TicketType;->PROBLEM:Lcom/zendesk/api/model/account/TicketType;

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETINCIDENTS:Lcom/zendesk/api/model/account/TicketFieldType;

    invoke-direct {p0, v1, v10, v11}, Lcom/zendesk/android/newticket/NewTicketActivity;->companionFields(Ljava/util/List;Lcom/zendesk/api/model/account/TicketType;Lcom/zendesk/api/model/account/TicketFieldType;)V

    .line 113
    .end local v6           #ticketTypeApiValue:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 115
    .local v0, entriesHeaderAdded:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    .line 117
    .local v5, tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    invoke-direct {p0, v5}, Lcom/zendesk/android/newticket/NewTicketActivity;->shouldIgnore(Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 121
    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getTicketField()Lcom/zendesk/api/model/account/TicketField;

    move-result-object v4

    .line 122
    .local v4, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/zendesk/api/model/strings/TicketFieldStrings;->setTicketFieldTitle(Landroid/content/res/Resources;Lcom/zendesk/api/model/account/TicketField;)V

    .line 123
    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v10

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v10, v11, :cond_4

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v10

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v10, v11, :cond_9

    .line 124
    :cond_4
    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/zendesk/android/newticket/NewTicketActivity;->addHeader(Ljava/lang/String;)V

    .line 130
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->inflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/zendesk/android/R$layout;->ticket_property_row:I

    iget-object v12, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->scrollView:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 131
    .local v3, row:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    sget v10, Lcom/zendesk/android/R$id;->ticket_property_field_title:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 135
    .local v7, title:Landroid/widget/TextView;
    sget v10, Lcom/zendesk/android/R$id;->ticket_property_field_value:I

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 137
    .local v9, value:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/zendesk/api/model/strings/TicketFieldEntryStrings;->getEditedValueDisplayString(Landroid/content/res/Resources;Lcom/zendesk/api/model/BaseModel;Lcom/zendesk/api/model/ticket/TicketFieldEntry;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, val:Ljava/lang/String;
    if-eqz v8, :cond_6

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const-string v8, "-"

    .line 140
    :cond_7
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->hasBeenEdited()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 143
    sget v10, Lcom/zendesk/android/Colors;->ZENDESK_GREEN:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    :goto_3
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->scrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 100
    .end local v0           #entriesHeaderAdded:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #row:Landroid/view/View;
    .end local v4           #tf:Lcom/zendesk/api/model/account/TicketField;
    .end local v5           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .end local v7           #title:Landroid/widget/TextView;
    .end local v8           #val:Ljava/lang/String;
    .end local v9           #value:Landroid/widget/TextView;
    :cond_8
    iget-object v10, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/Ticket;->getTicketTypeField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    goto/16 :goto_0

    .line 125
    .restart local v0       #entriesHeaderAdded:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #tf:Lcom/zendesk/api/model/account/TicketField;
    .restart local v5       #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    :cond_9
    if-nez v0, :cond_5

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v10

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v10, v11, :cond_a

    invoke-virtual {v4}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v10

    sget-object v11, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v10, v11, :cond_5

    .line 126
    :cond_a
    const/4 v0, 0x1

    .line 127
    sget v10, Lcom/zendesk/android/R$string;->ticket_properties_ticket_fields:I

    invoke-virtual {p0, v10}, Lcom/zendesk/android/newticket/NewTicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/zendesk/android/newticket/NewTicketActivity;->addHeader(Ljava/lang/String;)V

    goto :goto_2

    .line 145
    .restart local v3       #row:Landroid/view/View;
    .restart local v7       #title:Landroid/widget/TextView;
    .restart local v8       #val:Ljava/lang/String;
    .restart local v9       #value:Landroid/widget/TextView;
    :cond_b
    sget v10, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 149
    .end local v3           #row:Landroid/view/View;
    .end local v4           #tf:Lcom/zendesk/api/model/account/TicketField;
    .end local v5           #tfe:Lcom/zendesk/api/model/ticket/TicketFieldEntry;,"Lcom/zendesk/api/model/ticket/TicketFieldEntry<*>;"
    .end local v7           #title:Landroid/widget/TextView;
    .end local v8           #val:Ljava/lang/String;
    .end local v9           #value:Landroid/widget/TextView;
    :cond_c
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 302
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 304
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/zendesk/android/newticket/NewTicketActivity;->applyMacro(ILandroid/content/Intent;)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x7d8
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x7d6

    .line 225
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getStatus()Lcom/zendesk/api/model/account/Status;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/Status;->CLOSED:Lcom/zendesk/api/model/account/Status;

    if-ne v1, v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/account/TicketField;

    .line 229
    .local v0, tf:Lcom/zendesk/api/model/account/TicketField;
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TAGGER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_2

    .line 231
    const-class v1, Lcom/zendesk/android/ticket/editors/EditDropdownActivity;

    const/16 v2, 0x7d4

    invoke-direct {p0, v0, v1, v2}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TEXT:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->REGEX:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->INTEGER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DECIMAL:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_4

    .line 236
    :cond_3
    const-class v1, Lcom/zendesk/android/ticket/editors/EditSingleLineActivity;

    const/16 v2, 0x7d5

    invoke-direct {p0, v0, v1, v2}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TEXTAREA:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->SUBJECT:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_6

    .line 240
    :cond_5
    const-class v1, Lcom/zendesk/android/ticket/editors/EditMultiLineActivity;

    const/16 v2, 0x7da

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;ILjava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_6
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DESCRIPTION:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_7

    .line 244
    const-class v1, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    const/16 v2, 0x7d3

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;ILjava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_7
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->STATUS:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TYPE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->PRIORITY:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->GROUP:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_9

    .line 249
    :cond_8
    const-class v1, Lcom/zendesk/android/ticket/editors/EditListActivity;

    invoke-direct {p0, v0, v1, v5}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 251
    :cond_9
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->CHECKBOX:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_a

    .line 253
    const-class v1, Lcom/zendesk/android/ticket/editors/EditCheckboxActivity;

    invoke-direct {p0, v0, v1, v5}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 255
    :cond_a
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DUEDATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-eq v1, v2, :cond_b

    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->DATE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_c

    .line 257
    :cond_b
    const-class v1, Lcom/zendesk/android/ticket/editors/EditDateActivity;

    const/16 v2, 0x7db

    invoke-direct {p0, v0, v1, v2}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 258
    :cond_c
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->CC:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_d

    .line 260
    const-class v1, Lcom/zendesk/android/ticket/editors/EditCCsActivity;

    const/16 v2, 0x7dc

    invoke-direct {p0, v0, v1, v2}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 262
    :cond_d
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TAG:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_e

    .line 264
    const-class v1, Lcom/zendesk/android/ticket/editors/EditTagsActivity;

    const/16 v2, 0x7dd

    invoke-direct {p0, v0, v1, v2}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 266
    :cond_e
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->REQUESTER:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_f

    .line 268
    const-class v1, Lcom/zendesk/android/ticket/editors/EditRequesterActivity;

    const/16 v2, 0x7de

    invoke-direct {p0, v0, v1, v2}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 270
    :cond_f
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_11

    .line 271
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->ASSIGNEE:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/Ticket;->getGroupField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 273
    :cond_10
    const-class v1, Lcom/zendesk/android/ticket/editors/EditAssigneeActivity;

    invoke-direct {p0, v0, v1, v5}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 276
    :cond_11
    invoke-virtual {v0}, Lcom/zendesk/api/model/account/TicketField;->getType()Lcom/zendesk/api/model/account/TicketFieldType;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/account/TicketFieldType;->TICKETFORM:Lcom/zendesk/api/model/account/TicketFieldType;

    if-ne v1, v2, :cond_0

    .line 277
    const-class v1, Lcom/zendesk/android/ticket/editors/EditListActivity;

    invoke-direct {p0, v0, v1, v5}, Lcom/zendesk/android/newticket/NewTicketActivity;->startEditor(Lcom/zendesk/api/model/account/TicketField;Ljava/lang/Class;I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 453
    .local v0, inflater:Lcom/actionbarsherlock/view/MenuInflater;
    sget v1, Lcom/zendesk/android/R$menu;->new_ticket_menu:I

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 454
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 465
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 467
    .local v0, itemId:I
    sget v1, Lcom/zendesk/android/R$id;->ticket_menu_apply_macro:I

    if-ne v0, v1, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->showMacros()V

    .line 475
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 469
    :cond_1
    sget v1, Lcom/zendesk/android/R$id;->new_ticket_menu_submit:I

    if-ne v0, v1, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->submit()V

    goto :goto_0

    .line 471
    :cond_2
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setupForIndeterminateProgress()V
    .locals 1

    .prologue
    .line 433
    new-instance v0, Lcom/zendesk/android/newticket/NewTicketActivity$4;

    invoke-direct {v0, p0}, Lcom/zendesk/android/newticket/NewTicketActivity$4;-><init>(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method

.method public setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;
    .locals 3
    .parameter "msgId"

    .prologue
    .line 416
    new-instance v0, Lcom/zendesk/android/newticket/NewTicketActivity$3;

    invoke-direct {v0, p0}, Lcom/zendesk/android/newticket/NewTicketActivity$3;-><init>(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    .line 426
    .local v0, prog:Lcom/zendesk/api/http/ProgressMonitor;
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarIndeterminate:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 427
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->progressBarProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->loadingMsg:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 429
    return-object v0
.end method

.method public submit()V
    .locals 6

    .prologue
    .line 348
    iget-object v3, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getDescriptionField()Lcom/zendesk/api/model/ticket/TicketFieldEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/TicketFieldEntry;->getEditedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/zendesk/api/model/ZDModelObject;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    sget v3, Lcom/zendesk/android/R$string;->ticket_update_field_required:I

    sget v4, Lcom/zendesk/android/R$string;->ticket_update_description_required:I

    invoke-virtual {p0, v4}, Lcom/zendesk/android/newticket/NewTicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v3, v4, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 350
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    .line 401
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v2, 0x0

    .line 355
    .local v2, prog:Lcom/zendesk/api/http/ProgressMonitor;
    iget-object v3, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/Ticket;->getComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 356
    sget v3, Lcom/zendesk/android/R$string;->uploading_msg:I

    invoke-virtual {p0, v3}, Lcom/zendesk/android/newticket/NewTicketActivity;->setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;

    move-result-object v2

    .line 361
    :goto_1
    invoke-direct {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/zendesk/android/newticket/NewTicketActivity;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    new-instance v4, Lcom/zendesk/android/newticket/NewTicketActivity$2;

    invoke-direct {v4, p0}, Lcom/zendesk/android/newticket/NewTicketActivity$2;-><init>(Lcom/zendesk/android/newticket/NewTicketActivity;)V

    invoke-virtual {v3, v4, v2}, Lcom/zendesk/api/model/ticket/Ticket;->commit(Lcom/zendesk/api/model/ResponseHandler;Lcom/zendesk/api/http/ProgressMonitor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/Throwable;
    const-string v3, "NewTicketActivity"

    const-string v4, "Error commiting new ticket"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    invoke-direct {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->toggleLoading()V

    .line 398
    sget v3, Lcom/zendesk/android/R$string;->ticket_update_error_title:I

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v3, v4, v5}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 399
    .restart local v0       #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    invoke-virtual {p0, v0}, Lcom/zendesk/android/newticket/NewTicketActivity;->showOnResume(Lcom/zendesk/android/ui/ZDAlertDialog;)V

    goto :goto_0

    .line 358
    .end local v0           #dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Lcom/zendesk/android/newticket/NewTicketActivity;->setupForIndeterminateProgress()V

    goto :goto_1
.end method
