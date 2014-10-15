.class public Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
.super Ljava/lang/Object;
.source "OmaDrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmProfile"
.end annotation


# instance fields
.field private mDrmMethod:I

.field private mIsDrm:Z

.field private mMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(IZ)V
    .locals 1
    .parameter "method"
    .parameter "isDrm"

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-boolean v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mIsDrm:Z

    .line 277
    iput v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mDrmMethod:I

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mMimeType:Ljava/lang/String;

    .line 281
    iput p1, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mDrmMethod:I

    .line 282
    iput-boolean p2, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mIsDrm:Z

    .line 284
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 287
    :cond_0
    const-string v0, "application/vnd.oma.drm.message"

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mMimeType:Ljava/lang/String;

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 289
    const-string v0, "application/vnd.oma.drm.content"

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMethod()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mDrmMethod:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mIsDrm:Z

    return v0
.end method

.method public isDrmDcfFile()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmDcfFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDrmMsgFile()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->mMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmMsgFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
