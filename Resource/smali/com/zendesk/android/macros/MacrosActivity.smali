.class public Lcom/zendesk/android/macros/MacrosActivity;
.super Lcom/zendesk/android/ui/ZDFragmentActivity;
.source "MacrosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private macroName:Ljava/lang/String;

.field private macros:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zendesk/api/model/macros/Macro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zendesk/android/ui/ZDFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createIU(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    sget v0, Lcom/zendesk/android/R$layout;->activity_macros:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/macros/MacrosActivity;->setContentView(I)V

    .line 27
    sget v0, Lcom/zendesk/android/R$string;->macros_title:I

    invoke-virtual {p0, v0}, Lcom/zendesk/android/macros/MacrosActivity;->setTitle(I)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zendesk/android/macros/MacrosActivity;->displayBackUp(Z)V

    .line 29
    return-void
.end method

.method public isLoggingIn()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public loginError()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public loginSuccess()V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/zendesk/android/macros/MacrosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "macroName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/macros/MacrosActivity;->macroName:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/zendesk/api/ZendeskModel;->getInstance()Lcom/zendesk/api/ZendeskModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zendesk/api/ZendeskModel;->getMacros()Lcom/zendesk/api/model/macros/Macros;

    move-result-object v2

    iget-object v3, p0, Lcom/zendesk/android/macros/MacrosActivity;->macroName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zendesk/api/model/macros/Macros;->getMacrosForParent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/zendesk/android/macros/MacrosActivity;->macros:Ljava/util/List;

    .line 40
    sget v2, Lcom/zendesk/android/R$id;->macros_list:I

    invoke-virtual {p0, v2}, Lcom/zendesk/android/macros/MacrosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 41
    .local v1, listView:Landroid/widget/ListView;
    new-instance v0, Lcom/zendesk/android/macros/MacrosAdapter;

    iget-object v2, p0, Lcom/zendesk/android/macros/MacrosActivity;->macros:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/zendesk/android/macros/MacrosAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 42
    .local v0, adapter:Lcom/zendesk/android/macros/MacrosAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 44
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    packed-switch p2, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p3}, Lcom/zendesk/android/macros/MacrosActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/zendesk/android/macros/MacrosActivity;->finish()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zendesk/android/macros/MacrosActivity;->macros:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/macros/Macro;

    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zendesk/android/macros/MacrosActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "macroName"

    iget-object v2, p0, Lcom/zendesk/android/macros/MacrosActivity;->macros:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/macros/Macro;

    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/16 v2, 0x7d4

    invoke-virtual {p0, v1, v2}, Lcom/zendesk/android/macros/MacrosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, i:Landroid/content/Intent;
    const-string v3, "macroId"

    iget-object v2, p0, Lcom/zendesk/android/macros/MacrosActivity;->macros:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zendesk/api/model/macros/Macro;

    invoke-virtual {v2}, Lcom/zendesk/api/model/macros/Macro;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2, v0}, Lcom/zendesk/android/macros/MacrosActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/zendesk/android/macros/MacrosActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 85
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/zendesk/android/macros/MacrosActivity;->finish()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/zendesk/android/ui/ZDFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "macroName"

    iget-object v1, p0, Lcom/zendesk/android/macros/MacrosActivity;->macroName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
