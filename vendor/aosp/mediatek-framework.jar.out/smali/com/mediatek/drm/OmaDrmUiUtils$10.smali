.class final Lcom/mediatek/drm/OmaDrmUiUtils$10;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicense(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rightsIssuerFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$10;->val$rightsIssuerFinal:Ljava/lang/String;

    iput-object p2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 976
    const-string v1, "OmaDrmUiUtils"

    const-string v2, "showRefreshLicense: start to refresh license"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmUiUtils$10;->val$rightsIssuerFinal:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 979
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmUiUtils$10;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 980
    return-void
.end method
