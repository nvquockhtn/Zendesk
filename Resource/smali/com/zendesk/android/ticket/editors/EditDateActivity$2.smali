.class Lcom/zendesk/android/ticket/editors/EditDateActivity$2;
.super Ljava/lang/Object;
.source "EditDateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zendesk/android/ticket/editors/EditDateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

.field final synthetic val$picker:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/zendesk/android/ticket/editors/EditDateActivity;Landroid/app/DatePickerDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    iput-object p2, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;->val$picker:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;->val$picker:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 124
    .local v0, dp:Landroid/widget/DatePicker;
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    #getter for: Lcom/zendesk/android/ticket/editors/EditDateActivity;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v1}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->access$200(Lcom/zendesk/android/ticket/editors/EditDateActivity;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 125
    iget-object v1, p0, Lcom/zendesk/android/ticket/editors/EditDateActivity$2;->this$0:Lcom/zendesk/android/ticket/editors/EditDateActivity;

    invoke-virtual {v1}, Lcom/zendesk/android/ticket/editors/EditDateActivity;->finish()V

    .line 126
    return-void
.end method
