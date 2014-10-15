.class final Lcom/mediatek/drm/OmaDrmUiUtils$2;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 625
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 626
    return-void
.end method
