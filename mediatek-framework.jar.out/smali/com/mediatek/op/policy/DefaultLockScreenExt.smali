.class public Lcom/mediatek/op/policy/DefaultLockScreenExt;
.super Ljava/lang/Object;
.source "DefaultLockScreenExt.java"

# interfaces
.implements Lcom/mediatek/common/policy/ILockScreenExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultLockScreenExt"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "Default Constructor called "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "DefaultLockScreenExt"

    const-string v1, " Constructor called with argument"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method


# virtual methods
.method public initDgilLayout(IILandroid/view/ViewGroup;)V
    .locals 2
    .parameter "currentMode"
    .parameter "mode"
    .parameter "object"

    .prologue
    .line 67
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "initDgilLayout called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public isOrangeLockscreenInstalled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "isOrangeLockscreenInstalled called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUnlockedScreen()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "notifyUnlockedScreen called"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
