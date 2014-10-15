.class final Lcom/mediatek/drm/OmaDrmUiUtils$5;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils;->showConsumeRights(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;


# direct methods
.method constructor <init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$5;->val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$5;->val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "OmaDrmUiUtils"

    const-string v1, "showConsumeRights: start to consume rights"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUiUtils$5;->val$listener:Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;->onOperated(I)V

    .line 811
    :cond_0
    return-void
.end method
