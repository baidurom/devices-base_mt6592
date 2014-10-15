.class Landroid/annotation/BaiduHookUsage;
.super Ljava/lang/Object;
.source "BaiduHook.java"


# instance fields
.field private mtk:I
    .annotation build Landroid/annotation/BaiduHook;
        comment = "Only MTK needs."
        product = .enum Landroid/annotation/BaiduHook$Product;->MTK:Landroid/annotation/BaiduHook$Product;
    .end annotation
.end field

.field private qcom:I
    .annotation build Landroid/annotation/BaiduHook;
        comment = "Only Qcom needs."
        product = .enum Landroid/annotation/BaiduHook$Product;->QCOM:Landroid/annotation/BaiduHook$Product;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extBaiduSpecific()V
    .locals 0
    .annotation build Landroid/annotation/BaiduHook;
        comment = "Only Baidu\'s Product needs."
        product = .enum Landroid/annotation/BaiduHook$Product;->QCOM:Landroid/annotation/BaiduHook$Product;
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method private extFunc()V
    .locals 2
    .annotation build Landroid/annotation/BaiduHook;
    .end annotation

    .prologue
    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "extFunc"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private extMTKSpecific()V
    .locals 1
    .annotation build Landroid/annotation/BaiduHook;
        comment = "Only MTK needs."
        product = .enum Landroid/annotation/BaiduHook$Product;->MTK:Landroid/annotation/BaiduHook$Product;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/annotation/BaiduHookUsage;->mtk:I

    .line 60
    return-void
.end method

.method private extQcomSpecific()V
    .locals 1
    .annotation build Landroid/annotation/BaiduHook;
        comment = "Only Qcom needs."
        product = .enum Landroid/annotation/BaiduHook$Product;->QCOM:Landroid/annotation/BaiduHook$Product;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/annotation/BaiduHookUsage;->qcom:I

    .line 65
    return-void
.end method
