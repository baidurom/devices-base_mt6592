.class public Lcom/mediatek/webkit/PickerManager;
.super Ljava/lang/Object;
.source "PickerManager.java"

# interfaces
.implements Lcom/mediatek/common/webkit/IPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/webkit/PickerManager$ColorChangedListener;
    }
.end annotation


# instance fields
.field private INVALID_COLOR:I

.field private mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

.field private mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

.field private mPickerType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "colorPicker"

    iput-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/webkit/PickerManager;->INVALID_COLOR:I

    .line 95
    iput-object p1, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/webkit/PickerManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mediatek/webkit/PickerManager;->INVALID_COLOR:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/webkit/PickerManager;)Lcom/mediatek/common/webkit/IOnChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/mediatek/webkit/PickerManager;
    .locals 1
    .parameter "type"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/mediatek/webkit/PickerManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/mediatek/webkit/PickerManager;

    invoke-direct {v0, p0}, Lcom/mediatek/webkit/PickerManager;-><init>(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 48
    const-string v0, "colorPicker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "monthPicker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "weekPicker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    return-object v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/mediatek/webkit/ColorPickerDialog;->onConfigurationChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public setOnChangedListener(Lcom/mediatek/common/webkit/IOnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    .line 59
    return-void
.end method

.method public show(Landroid/content/Context;IILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "initialValue1"
    .parameter "initialValue2"
    .parameter "initialObj"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    const-string v1, "colorPicker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    if-eqz p1, :cond_1

    .line 65
    new-instance v0, Lcom/mediatek/webkit/ColorPickerDialog;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/webkit/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

    .line 66
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

    new-instance v1, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;

    iget-object v2, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;-><init>(Lcom/mediatek/webkit/PickerManager;Lcom/mediatek/common/webkit/IOnChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/webkit/ColorPickerDialog;->setOnColorChangedListener(Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

    new-instance v1, Lcom/mediatek/webkit/PickerManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/webkit/PickerManager$1;-><init>(Lcom/mediatek/webkit/PickerManager;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/webkit/ColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mDialog:Lcom/mediatek/webkit/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/mediatek/webkit/ColorPickerDialog;->show()V

    .line 83
    :cond_1
    return-void
.end method
