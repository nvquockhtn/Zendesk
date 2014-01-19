.class Lcom/zendesk/android/views/ViewsAdapter$ViewRow;
.super Ljava/lang/Object;
.source "ViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/views/ViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewRow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/views/ViewsAdapter;

.field ticketCount:Landroid/widget/TextView;

.field viewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/views/ViewsAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;->this$0:Lcom/zendesk/android/views/ViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget v0, Lcom/zendesk/android/R$id;->views_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;->viewTitle:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/zendesk/android/R$id;->views_ticket_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/views/ViewsAdapter$ViewRow;->ticketCount:Landroid/widget/TextView;

    .line 82
    return-void
.end method
