.class Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;
.super Ljava/lang/Object;
.source "ForumCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/forums/ForumCommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForumCommentRow"
.end annotation


# instance fields
.field body:Landroid/widget/TextView;

.field commentAuthor:Landroid/widget/TextView;

.field commentAvatar:Landroid/widget/ImageView;

.field commentTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/forums/ForumCommentAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->this$0:Lcom/zendesk/android/forums/ForumCommentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget v0, Lcom/zendesk/android/R$id;->forum_comment_body:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->body:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/zendesk/android/R$id;->comment_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentTime:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/zendesk/android/R$id;->comment_author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAuthor:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/zendesk/android/R$id;->comment_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/forums/ForumCommentAdapter$ForumCommentRow;->commentAvatar:Landroid/widget/ImageView;

    .line 154
    return-void
.end method
