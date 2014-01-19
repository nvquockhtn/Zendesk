.class public Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/ticket/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentHeader"
.end annotation


# instance fields
.field author:Landroid/widget/TextView;

.field avatar:Landroid/widget/ImageView;

.field commentTime:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zendesk/android/ticket/CommentsAdapter;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)V
    .locals 2
    .parameter
    .parameter "convertView"
    .parameter "parent"
    .parameter "c"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->this$0:Lcom/zendesk/android/ticket/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    sget v0, Lcom/zendesk/android/R$id;->comment_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->commentTime:Landroid/widget/TextView;

    .line 391
    sget v0, Lcom/zendesk/android/R$id;->comment_author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->author:Landroid/widget/TextView;

    .line 392
    sget v0, Lcom/zendesk/android/R$id;->comment_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    .line 393
    sget v0, Lcom/zendesk/android/R$id;->comment_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    .line 395
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->commentTime:Landroid/widget/TextView;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$500(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->author:Landroid/widget/TextView;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$500(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$500(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    #getter for: Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->access$500(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->commentTime:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->author:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 404
    return-void
.end method
