.class Lcom/mediatek/webkit/PickerManager$1;
.super Ljava/lang/Object;
.source "PickerManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/webkit/PickerManager;->show(Landroid/content/Context;IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/webkit/PickerManager;


# direct methods
.method constructor <init>(Lcom/mediatek/webkit/PickerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/webkit/PickerManager$1;->this$0:Lcom/mediatek/webkit/PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager$1;->this$0:Lcom/mediatek/webkit/PickerManager;

    #getter for: Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;
    invoke-static {v0}, Lcom/mediatek/webkit/PickerManager;->access$100(Lcom/mediatek/webkit/PickerManager;)Lcom/mediatek/common/webkit/IOnChangedListener;

    move-result-object v0

    const-string v1, "colorPicker"

    iget-object v2, p0, Lcom/mediatek/webkit/PickerManager$1;->this$0:Lcom/mediatek/webkit/PickerManager;

    #getter for: Lcom/mediatek/webkit/PickerManager;->INVALID_COLOR:I
    invoke-static {v2}, Lcom/mediatek/webkit/PickerManager;->access$000(Lcom/mediatek/webkit/PickerManager;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/common/webkit/IOnChangedListener;->onChanged(Ljava/lang/String;IILjava/lang/Object;)V

    .line 76
    return-void
.end method
