.class Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/EventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditRow"
.end annotation


# instance fields
.field bodyArea:Landroid/widget/LinearLayout;

.field client:Landroid/widget/TextView;

.field headerContainer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/zendesk/android/ticket/EventsAdapter;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/EventsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 2
    .parameter
    .parameter "convertView"
    .parameter "parent"
    .parameter "ta"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    sget v0, Lcom/zendesk/android/R$id;->comment_header_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->headerContainer:Landroid/widget/LinearLayout;

    .line 299
    sget v0, Lcom/zendesk/android/R$id;->event_body_area:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->bodyArea:Landroid/widget/LinearLayout;

    .line 300
    sget v0, Lcom/zendesk/android/R$id;->event_client:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->client:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->headerContainer:Landroid/widget/LinearLayout;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/EventsAdapter;->access$400(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditRow;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 304
    return-void
.end method
