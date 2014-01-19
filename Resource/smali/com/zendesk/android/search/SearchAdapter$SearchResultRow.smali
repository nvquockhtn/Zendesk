.class Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;
.super Ljava/lang/Object;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/android/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultRow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/search/SearchAdapter;

.field title:Landroid/widget/TextView;

.field type:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/zendesk/android/search/SearchAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->this$0:Lcom/zendesk/android/search/SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget v0, Lcom/zendesk/android/R$id;->search_result_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->type:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/zendesk/android/R$id;->search_result_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zendesk/android/search/SearchAdapter$SearchResultRow;->title:Landroid/widget/TextView;

    .line 79
    return-void
.end method
