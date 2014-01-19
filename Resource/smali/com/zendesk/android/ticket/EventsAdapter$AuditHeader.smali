.class public Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/EventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuditHeader"
.end annotation


# instance fields
.field auditTime:Landroid/widget/TextView;

.field author:Landroid/widget/TextView;

.field avatar:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zendesk/android/ticket/EventsAdapter;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/EventsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/TicketAudit;)V
    .locals 2
    .parameter
    .parameter "convertView"
    .parameter "parent"
    .parameter "ta"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->this$0:Lcom/zendesk/android/ticket/EventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    sget v0, Lcom/zendesk/android/R$id;->comment_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->auditTime:Landroid/widget/TextView;

    .line 316
    sget v0, Lcom/zendesk/android/R$id;->comment_author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->author:Landroid/widget/TextView;

    .line 317
    sget v0, Lcom/zendesk/android/R$id;->comment_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    .line 318
    sget v0, Lcom/zendesk/android/R$id;->comment_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->icon:Landroid/widget/ImageView;

    .line 320
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->auditTime:Landroid/widget/TextView;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/EventsAdapter;->access$400(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->author:Landroid/widget/TextView;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/EventsAdapter;->access$400(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/EventsAdapter;->access$400(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->icon:Landroid/widget/ImageView;

    #getter for: Lcom/zendesk/android/ticket/EventsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/EventsAdapter;->access$400(Lcom/zendesk/android/ticket/EventsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->auditTime:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->author:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/zendesk/android/ticket/EventsAdapter$AuditHeader;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 329
    return-void
.end method
