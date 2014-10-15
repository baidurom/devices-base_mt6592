.class Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
.super Ljava/lang/Object;
.source "OmaDrmUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmScanCompletedProxy"
.end annotation


# instance fields
.field private mClient:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

.field private mScanCount:I

.field private mScannedCount:I


# direct methods
.method public constructor <init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V
    .locals 1
    .parameter "callback"
    .parameter "scanCount"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    .line 195
    iput p2, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScanCount:I

    .line 196
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mClient:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .line 197
    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 200
    iget v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    .line 201
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mClient:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;->onScanCompletedOne(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    iget v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    iget v1, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScanCount:I

    if-lt v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mClient:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    iget v1, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    invoke-interface {v0, v1}, Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;->onScanCompletedAll(I)V

    .line 205
    :cond_0
    return-void
.end method
