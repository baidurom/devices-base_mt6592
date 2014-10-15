.class Lcom/mediatek/drm/OmaDrmClient$getCidListener;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getCidListener"
.end annotation


# instance fields
.field private mCallback:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/drm/OmaDrmClient;


# direct methods
.method public constructor <init>(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 692
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->this$0:Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->mContext:Landroid/content/Context;

    .line 689
    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->mCallback:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .line 693
    iput-object p2, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->mContext:Landroid/content/Context;

    .line 694
    iput-object p3, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->mCallback:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .line 695
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 6
    .parameter "client"
    .parameter "event"

    .prologue
    .line 698
    const-string v3, "drm_info_status_object"

    invoke-virtual {p2, v3}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/drm/DrmInfoStatus;

    move-object v2, v3

    check-cast v2, Landroid/drm/DrmInfoStatus;

    .line 700
    .local v2, status:Landroid/drm/DrmInfoStatus;
    invoke-static {v2}, Lcom/mediatek/drm/OmaDrmUtils;->getMsgFromInfoStatus(Landroid/drm/DrmInfoStatus;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, cid:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/drm/OmaDrmClient$getCidListener;->mCallback:Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    invoke-static {v3, v0, v4}, Lcom/mediatek/drm/OmaDrmUtils;->rescanDrmMediaFiles(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I

    move-result v1

    .line 704
    .local v1, result:I
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OmaDrmUtils.rescanDrmMediaFiles: > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method
