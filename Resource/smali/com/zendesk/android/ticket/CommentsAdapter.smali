.class public Lcom/zendesk/android/ticket/CommentsAdapter;
.super Lcom/zendesk/android/adapters/BaseListAdapter;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;,
        Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;
    }
.end annotation


# instance fields
.field private avatarCache:Lcom/zendesk/android/ui/AvatarCache;

.field private final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private editClickListener:Landroid/view/View$OnClickListener;

.field private fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

.field private ticket:Lcom/zendesk/api/model/ticket/Ticket;

.field private ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

.field private uiHandler:Landroid/os/Handler;

.field private userProfileClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/zendesk/api/model/ticket/Ticket;Lcom/zendesk/android/ticket/TicketCommentsFragment;Lcom/zendesk/android/ui/AvatarCache;Landroid/os/Handler;)V
    .locals 1
    .parameter "ticket"
    .parameter "fragment"
    .parameter "avatarCache"
    .parameter "uiHandler"

    .prologue
    .line 64
    invoke-virtual {p2}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zendesk/android/adapters/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    .line 407
    new-instance v0, Lcom/zendesk/android/ticket/CommentsAdapter$3;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/CommentsAdapter$3;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->editClickListener:Landroid/view/View$OnClickListener;

    .line 415
    new-instance v0, Lcom/zendesk/android/ticket/CommentsAdapter$4;

    invoke-direct {v0, p0}, Lcom/zendesk/android/ticket/CommentsAdapter$4;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;)V

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p2, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

    .line 66
    invoke-virtual {p2}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/zendesk/android/ticket/TicketActivity;

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    .line 67
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v0}, Lcom/zendesk/android/ticket/TicketActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 69
    iput-object p3, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 70
    iput-object p4, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->uiHandler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0}, Lcom/zendesk/android/ticket/CommentsAdapter;->updateCommentsList()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/CommentsAdapter;->setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/android/ticket/TicketCommentsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/CommentsAdapter;->startViewIntent(Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zendesk/android/ticket/CommentsAdapter;Ljava/lang/String;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/zendesk/android/ticket/CommentsAdapter;->setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->editClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zendesk/android/ticket/CommentsAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zendesk/android/ticket/CommentsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/zendesk/android/ticket/CommentsAdapter;->editComment()V

    return-void
.end method

.method static synthetic access$800(Lcom/zendesk/android/ticket/CommentsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zendesk/android/ticket/CommentsAdapter;)Lcom/zendesk/api/model/ticket/Ticket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    return-object v0
.end method

.method private addAttachments(Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 5
    .parameter "row"
    .parameter "c"
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/zendesk/android/R$layout;->attachment_icon_name:I

    iget-object v3, p1, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 165
    .local v0, attachView:Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Lcom/zendesk/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    sget v1, Lcom/zendesk/android/R$id;->attachment_icon_image:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcom/zendesk/android/ticket/CommentsAdapter;->getIconId(Lcom/zendesk/api/model/shared/Attachment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    sget v1, Lcom/zendesk/android/R$id;->attachment_icon_name:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 170
    iget-object v1, p1, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/zendesk/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method private checkSectionHeader(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)V
    .locals 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"
    .parameter "c"

    .prologue
    .line 175
    sget v2, Lcom/zendesk/android/R$id;->comment_section_header_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 176
    .local v0, commentSectionHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    invoke-direct {p0, p1, p4}, Lcom/zendesk/android/ticket/CommentsAdapter;->isNewSection(ILcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/zendesk/android/R$layout;->comment_section_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 179
    .local v1, sectionHeader:Landroid/widget/RelativeLayout;
    sget v2, Lcom/zendesk/android/R$id;->comment_section_header_text:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zendesk/api/model/shared/ZDDate;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    .end local v1           #sectionHeader:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private editComment()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/zendesk/android/ticket/editors/CreateCommentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ticketId"

    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/Ticket;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    return-void
.end method

.method private getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I
    .locals 2
    .parameter "u"

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getRole()Lcom/zendesk/api/model/users/Role;

    move-result-object v0

    sget-object v1, Lcom/zendesk/api/model/users/Role;->SYSTEM:Lcom/zendesk/api/model/users/Role;

    if-ne v0, v1, :cond_0

    .line 552
    sget v0, Lcom/zendesk/android/R$drawable;->user_system_avatar:I

    .line 554
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/zendesk/android/R$drawable;->user_default_avatar:I

    goto :goto_0
.end method

.method private getIconId(Lcom/zendesk/api/model/shared/Attachment;)I
    .locals 2
    .parameter "a"

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_img:I

    .line 547
    :goto_0
    return v0

    .line 526
    :cond_0
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_video:I

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_audio:I

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->isPDF()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_pdf:I

    goto :goto_0

    .line 535
    :cond_3
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->isDoc()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 536
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".docx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 537
    :cond_4
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_doc:I

    goto :goto_0

    .line 539
    :cond_5
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xlsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 540
    :cond_6
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_xls:I

    goto :goto_0

    .line 542
    :cond_7
    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/zendesk/api/model/shared/Attachment;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pptx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 543
    :cond_8
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_ppt:I

    goto :goto_0

    .line 547
    :cond_9
    sget v0, Lcom/zendesk/android/R$drawable;->attachment_icon_other:I

    goto :goto_0
.end method

.method private isNewSection(ILcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)Z
    .locals 8
    .parameter "pos"
    .parameter "c"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 186
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v3

    .line 190
    :cond_1
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v0

    .line 191
    .local v0, commentCal:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    .line 193
    .local v2, previousComment:Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/ZDDate;->getCal()Ljava/util/Calendar;

    move-result-object v1

    .line 195
    .local v1, prevCommentCal:Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 196
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 197
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 199
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
    .locals 2
    .parameter "u"
    .parameter "header"

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/zendesk/android/ticket/CommentsAdapter$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/zendesk/android/ticket/CommentsAdapter$2;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;Lcom/zendesk/api/model/users/User;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/api/model/users/User;->getAvatar(Lcom/zendesk/api/model/ResponseHandler;)V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
    .locals 1
    .parameter "u"
    .parameter "header"

    .prologue
    .line 290
    new-instance v0, Lcom/zendesk/android/ticket/CommentsAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/zendesk/android/ticket/CommentsAdapter$1;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    .line 314
    return-void
.end method

.method private populateHeader(Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "row"
    .parameter "c"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, commentHeader:Landroid/view/View;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getUserCache()Lcom/zendesk/api/model/cache/UserCache;

    move-result-object v4

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getAuthorId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/zendesk/api/model/cache/UserCache;->getUser(Ljava/lang/Long;)Lcom/zendesk/api/model/users/User;

    move-result-object v0

    .line 207
    .local v0, author:Lcom/zendesk/api/model/users/User;
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/ZendeskModel;->getGroups()Lcom/zendesk/api/model/users/Groups;

    move-result-object v4

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getUserId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zendesk/api/model/users/Groups;->isAgent(Ljava/lang/Long;)Z

    move-result v3

    .line 209
    .local v3, isAgent:Z
    if-eqz v3, :cond_0

    .line 210
    iget-object v4, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->comment_header_agent:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 215
    :goto_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->userProfileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    new-instance v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;

    invoke-direct {v2, p0, v1, p3, p2}, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)V

    .line 219
    .local v2, header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;
    instance-of v4, p2, Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->commentTime:Landroid/widget/TextView;

    sget v5, Lcom/zendesk/android/Colors;->ZENDESK_GREEN:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v4, p1, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->pencil:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_1
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->commentTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getCreatedAt()Lcom/zendesk/api/model/shared/ZDDate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/shared/ZDDate;->getTimeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->author:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/Via;->getChannel()Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v4

    sget-object v5, Lcom/zendesk/api/model/account/ViaChannel;->TWITTER:Lcom/zendesk/api/model/account/ViaChannel;

    if-ne v4, v5, :cond_3

    .line 230
    if-eqz v3, :cond_2

    .line 231
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_tweet_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :goto_2
    iget-object v4, p1, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 256
    iget-object v4, p1, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->headerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->fullyLoaded()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/zendesk/api/model/users/User;->getPhotoURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 261
    invoke-direct {p0, v0, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    .line 265
    :goto_3
    return-void

    .line 212
    .end local v2           #header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;
    :cond_0
    iget-object v4, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/zendesk/android/R$layout;->comment_header_requester:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    .line 223
    .restart local v2       #header:Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;
    :cond_1
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->commentTime:Landroid/widget/TextView;

    sget v5, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v4, p1, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->pencil:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 233
    :cond_2
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_tweet_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 235
    :cond_3
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getParentAudit()Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getVia()Lcom/zendesk/api/model/shared/Via;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zendesk/api/model/shared/Via;->getChannel()Lcom/zendesk/api/model/account/ViaChannel;

    move-result-object v4

    sget-object v5, Lcom/zendesk/api/model/account/ViaChannel;->FACEBOOK:Lcom/zendesk/api/model/account/ViaChannel;

    if-ne v4, v5, :cond_5

    .line 236
    if-eqz v3, :cond_4

    .line 237
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_pub_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 239
    :cond_4
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_pub_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 241
    :cond_5
    invoke-virtual {p2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getIsPublic()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 242
    if-eqz v3, :cond_6

    .line 243
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_pub_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 245
    :cond_6
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_pub_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 248
    :cond_7
    if-eqz v3, :cond_8

    .line 249
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_priv_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 251
    :cond_8
    iget-object v4, v2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->icon:Landroid/widget/ImageView;

    sget v5, Lcom/zendesk/android/R$drawable;->icon_priv_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 263
    :cond_9
    invoke-direct {p0, v0, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->loadUser(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    goto/16 :goto_3
.end method

.method private setAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V
    .locals 3
    .parameter "u"
    .parameter "header"

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/shared/DownloadState;->DOWNLOADED:Lcom/zendesk/api/model/shared/DownloadState;

    if-ne v1, v2, :cond_1

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;Ljava/lang/Object;)V

    .line 285
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return-void

    .line 276
    .restart local v0       #f:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/zendesk/android/Zendesk;->setupCacheDir(Landroid/content/Context;)V

    .line 277
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getPhotoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zendesk/api/model/users/User;->setPhotoURL(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/CommentsAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    goto :goto_0

    .line 280
    .end local v0           #f:Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Lcom/zendesk/api/model/users/User;->getAvatarState()Lcom/zendesk/api/model/shared/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/zendesk/api/model/shared/DownloadState;->LOCAL:Lcom/zendesk/api/model/shared/DownloadState;

    if-ne v1, v2, :cond_2

    .line 281
    iget-object v1, p2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/zendesk/android/ticket/CommentsAdapter;->getAvatarResourceId(Lcom/zendesk/api/model/users/User;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/zendesk/android/ticket/CommentsAdapter;->loadAvatar(Lcom/zendesk/api/model/users/User;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;)V

    goto :goto_0
.end method

.method private setImageURI(Ljava/lang/String;Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;Ljava/lang/Object;)V
    .locals 6
    .parameter "filePath"
    .parameter "header"
    .parameter "requiredTag"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    iget-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/zendesk/android/ticket/CommentsAdapter$CommentHeader;->avatar:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->uiHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zendesk/android/ui/AvatarCache;->getBitmap(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/widget/ImageView;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 353
    :cond_0
    return-void
.end method

.method private startViewIntent(Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V
    .locals 5
    .parameter "viewIntent"
    .parameter "a"

    .prologue
    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

    invoke-virtual {v2, p1}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v1

    .line 506
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    sget v2, Lcom/zendesk/android/R$string;->attachment_viewer_not_found:I

    iget-object v3, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    sget v4, Lcom/zendesk/android/R$string;->attachment_viewer_not_found_msg:I

    invoke-virtual {v3, v4}, Lcom/zendesk/android/ticket/TicketActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zendesk/android/R$string;->ok_action:I

    invoke-static {v2, v3, v4}, Lcom/zendesk/android/ui/ZDAlertDialog;->newInstance(ILjava/lang/String;I)Lcom/zendesk/android/ui/ZDAlertDialog;

    move-result-object v0

    .line 508
    .local v0, dialog:Lcom/zendesk/android/ui/ZDAlertDialog;
    iget-object v2, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v2}, Lcom/zendesk/android/ticket/TicketActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/zendesk/android/ui/ZDAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCommentsList()V
    .locals 6

    .prologue
    .line 87
    iget-object v5, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 88
    iget-object v5, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getComment()Lcom/zendesk/api/model/ticket/audits/Comment;

    move-result-object v3

    .line 89
    .local v3, draft:Lcom/zendesk/api/model/ticket/audits/Comment;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/zendesk/api/model/ticket/audits/Comment;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 90
    iget-object v5, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket;->getAudits()Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zendesk/api/model/ticket/Ticket$TicketAudits;->getComments()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, commentAudits:Ljava/util/List;,"Ljava/util/List<Lcom/zendesk/api/model/ticket/audits/TicketAudit;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/audits/TicketAudit;

    .line 94
    .local v1, ca:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    invoke-virtual {v1}, Lcom/zendesk/api/model/ticket/audits/TicketAudit;->getComment()Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    move-result-object v0

    .line 95
    .local v0, anAuditEvent:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    if-eqz v0, :cond_1

    instance-of v5, v0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    check-cast v0, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    .end local v0           #anAuditEvent:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v1           #ca:Lcom/zendesk/api/model/ticket/audits/TicketAudit;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, c:Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;
    iget-object v6, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/api/model/ticket/audits/AuditEvent;

    .line 122
    .local v1, ae:Lcom/zendesk/api/model/ticket/audits/AuditEvent;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    if-eqz v6, :cond_0

    move-object v2, v1

    .line 123
    check-cast v2, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;

    .line 126
    :cond_0
    if-nez p2, :cond_1

    .line 127
    iget-object v6, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/zendesk/android/R$layout;->comment_row:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    :cond_1
    iget-object v6, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->editClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    new-instance v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;

    invoke-direct {v4, p0, p2, p3, v2}, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)V

    .line 133
    .local v4, row:Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;
    instance-of v6, v2, Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v6, :cond_2

    .line 134
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    sget v7, Lcom/zendesk/android/Colors;->ZENDESK_GREEN:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :goto_0
    instance-of v6, v2, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;

    if-eqz v6, :cond_3

    move-object v5, v2

    .line 139
    check-cast v5, Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;

    .line 140
    .local v5, vcae:Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/zendesk/api/model/strings/VoiceCommentBuilder;->getCommentBodyFromVoiceCommentAuditEvent(Landroid/content/res/Resources;Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v5           #vcae:Lcom/zendesk/api/model/ticket/audits/types/VoiceCommentAuditEvent;
    :goto_1
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 145
    iget-object v6, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

    iget-object v7, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Lcom/zendesk/android/ticket/TicketCommentsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 147
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/zendesk/android/ticket/CommentsAdapter;->checkSectionHeader(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;)V

    .line 148
    invoke-direct {p0, v4, v2, p3}, Lcom/zendesk/android/ticket/CommentsAdapter;->populateHeader(Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;Landroid/view/ViewGroup;)V

    .line 150
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v6}, Lcom/zendesk/android/ui/FlowLayout;->removeAllViews()V

    .line 151
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getAttachments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 152
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    invoke-virtual {v6, v8}, Lcom/zendesk/android/ui/FlowLayout;->setVisibility(I)V

    .line 153
    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getAttachments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    .line 154
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    invoke-direct {p0, v4, v2, v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->addAttachments(Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;Lcom/zendesk/api/model/shared/Attachment;)V

    goto :goto_2

    .line 136
    .end local v0           #a:Lcom/zendesk/api/model/shared/Attachment;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    sget v7, Lcom/zendesk/android/Colors;->DARK_TEXT:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->commentText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zendesk/api/model/ticket/audits/types/CommentAuditEvent;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 157
    :cond_4
    iget-object v6, v4, Lcom/zendesk/android/ticket/CommentsAdapter$CommentRow;->attachmentsArea:Lcom/zendesk/android/ui/FlowLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/zendesk/android/ui/FlowLayout;->setVisibility(I)V

    .line 159
    :cond_5
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/zendesk/android/ticket/CommentsAdapter;->updateCommentsList()V

    .line 82
    invoke-super {p0}, Lcom/zendesk/android/adapters/BaseListAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zendesk/api/model/shared/Attachment;

    .line 454
    .local v0, a:Lcom/zendesk/api/model/shared/Attachment;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, viewIntent:Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getLocalFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    invoke-virtual {v0}, Lcom/zendesk/api/model/shared/Attachment;->fileComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    invoke-direct {p0, v2, v0}, Lcom/zendesk/android/ticket/CommentsAdapter;->startViewIntent(Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V

    .line 497
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    sget v4, Lcom/zendesk/android/R$string;->loading_msg:I

    invoke-virtual {v3, v4}, Lcom/zendesk/android/ticket/TicketActivity;->setupForProgressMonitor(I)Lcom/zendesk/api/http/ProgressMonitor;

    move-result-object v1

    .line 461
    .local v1, monitor:Lcom/zendesk/api/http/ProgressMonitor;
    invoke-virtual {v0, v1}, Lcom/zendesk/api/model/shared/Attachment;->setProgressMonitor(Lcom/zendesk/api/http/ProgressMonitor;)V

    .line 463
    iget-object v3, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/ticket/TicketActivity;->addLoadingRequest()V

    .line 464
    iget-object v3, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    invoke-virtual {v3}, Lcom/zendesk/android/ticket/TicketActivity;->showLoading()V

    .line 466
    new-instance v3, Lcom/zendesk/android/ticket/CommentsAdapter$5;

    invoke-direct {v3, p0, v2, v0}, Lcom/zendesk/android/ticket/CommentsAdapter$5;-><init>(Lcom/zendesk/android/ticket/CommentsAdapter;Landroid/content/Intent;Lcom/zendesk/api/model/shared/Attachment;)V

    invoke-virtual {v0, v3}, Lcom/zendesk/api/model/shared/Attachment;->refresh(Lcom/zendesk/api/model/ResponseHandler;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    iput-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 514
    iput-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->fragment:Lcom/zendesk/android/ticket/TicketCommentsFragment;

    .line 515
    iput-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticketActivity:Lcom/zendesk/android/ticket/TicketActivity;

    .line 516
    iput-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->context:Landroid/content/Context;

    .line 517
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    iput-object v1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->avatarCache:Lcom/zendesk/android/ui/AvatarCache;

    .line 519
    return-void
.end method

.method protected onItemClick(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->comments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zendesk/api/model/ticket/audits/Comment;

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/zendesk/android/ticket/CommentsAdapter;->editComment()V

    .line 441
    :cond_0
    return-void
.end method

.method public setTicket(Lcom/zendesk/api/model/ticket/Ticket;)V
    .locals 0
    .parameter "ticket"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zendesk/android/ticket/CommentsAdapter;->ticket:Lcom/zendesk/api/model/ticket/Ticket;

    .line 76
    invoke-direct {p0}, Lcom/zendesk/android/ticket/CommentsAdapter;->updateCommentsList()V

    .line 77
    return-void
.end method
