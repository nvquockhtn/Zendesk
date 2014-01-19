.class Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentRow"
.end annotation


# instance fields
.field attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

.field commentText:Landroid/widget/TextView;

.field headerContainer:Landroid/widget/LinearLayout;

.field pencil:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)V
    .locals 2
    .parameter
    .parameter "convertView"
    .parameter "parent"
    .parameter "c"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    sget v0, Lcom/zendesk/android/R$id;->comment_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    .line 366
    sget v0, Lcom/zendesk/android/R$id;->comment_row_pencil:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->pencil:Landroid/widget/ImageView;

    .line 367
    sget v0, Lcom/zendesk/android/R$id;->comment_header_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->headerContainer:Landroid/widget/LinearLayout;

    .line 368
    sget v0, Lcom/zendesk/android/R$id;->comment_attachments_area:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ui/FlowLayout;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    .line 370
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->editClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$400(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->pencil:Landroid/widget/ImageView;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->editClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$400(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->headerContainer:Landroid/widget/LinearLayout;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$500(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->editClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$400(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zendesk/android/ui/FlowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->pencil:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v0, p4}, Lcom/zendesk/android/ui/FlowLayout;->setTag(Ljava/lang/Object;)V

    .line 379
    return-void
.end method
