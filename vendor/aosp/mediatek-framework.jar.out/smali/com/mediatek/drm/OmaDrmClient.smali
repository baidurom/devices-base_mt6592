.class public Lcom/mediatek/drm/OmaDrmClient;
.super Ljava/lang/Object;
.source "OmaDrmClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmClient$getCidListener;
    }
.end annotation


# static fields
.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field private static final TAG:Ljava/lang/String; = "OmaDrmClient"

.field public static sConsumeDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sLicenseDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sProtectionInfoDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static sSecureTimerDialogQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "OmaDrmClient"

    const-string v1, "create OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 93
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    const-string v0, "OmaDrmClient"

    const-string v1, "new OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 1
    .parameter "drmInfoRequest"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 1
    .parameter "drmInfoRequest"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v0

    return v0
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 3
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    .line 403
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 404
    const-string v1, "OmaDrmClient"

    const-string v2, "checkRightsStatus : secure timer indicates invalid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x1

    .line 407
    :cond_0
    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 3
    .parameter "path"
    .parameter "action"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 386
    const-string v1, "OmaDrmClient"

    const-string v2, "checkRightsStatus : secure timer indicates invalid state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x1

    .line 389
    :cond_0
    return v0
.end method

.method public checkRightsStatusForTap(Landroid/net/Uri;I)I
    .locals 4
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 635
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v0

    .line 637
    .local v0, result:I
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v0
.end method

.method public checkRightsStatusForTap(Ljava/lang/String;I)I
    .locals 4
    .parameter "path"
    .parameter "action"

    .prologue
    .line 653
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 655
    .local v0, result:I
    const-string v1, "OmaDrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRightsStatusForTap : result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v0
.end method

.method public consumeRights(Landroid/net/Uri;I)I
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    const/16 v2, -0x7d0

    .line 516
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 519
    :cond_0
    const-string v3, "OmaDrmClient"

    const-string v4, "consumeRights : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_0
    return v2

    .line 522
    :cond_1
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 523
    const-string v3, "OmaDrmClient"

    const-string v4, "consumeRights : Given action is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_2
    const/4 v1, 0x0

    .line 529
    .local v1, path:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 534
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/drm/OmaDrmClient;->consumeRights(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @consumeRights : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public consumeRights(Ljava/lang/String;I)I
    .locals 9
    .parameter "path"
    .parameter "action"

    .prologue
    const/16 v5, -0x7d0

    .line 545
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consumeRights : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 548
    :cond_0
    const-string v6, "OmaDrmClient"

    const-string v7, "consumeRights : Given path is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    :goto_0
    return v5

    .line 551
    :cond_2
    invoke-static {p2}, Lcom/mediatek/drm/OmaDrmStore$Action;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 552
    const-string v6, "OmaDrmClient"

    const-string v7, "consumeRights : Given action is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    :cond_3
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x7e5

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v4, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 560
    .local v4, request:Landroid/drm/DrmInfoRequest;
    const-string v6, "action"

    const-string v7, "consumeRights"

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    const-string v6, "data"

    invoke-virtual {v4, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v6, "data_extra_1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 568
    .local v2, info:Landroid/drm/DrmInfo;
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 569
    .local v0, data:[B
    const-string v3, ""

    .line 570
    .local v3, message:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 573
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3           #message:Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .restart local v3       #message:Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consumeRights : >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v6, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 574
    .end local v3           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 575
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "OmaDrmClient"

    const-string v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v3, ""

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "OmaDrmClient"

    const-string v1, "finalize OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->getAvailableDrmEngines()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 1
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1
    .parameter "path"
    .parameter "action"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrmClient()Landroid/drm/DrmManagerClient;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 1
    .parameter "uri"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .parameter "path"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMethod(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    .line 592
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v0

    .line 595
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 597
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 601
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 611
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 614
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const-string v2, "drm_method"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 616
    .local v1, m:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 620
    .end local v1           #m:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 1
    .parameter "engineFilePath"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->installDrmEngine(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public installDrmMsg(Landroid/net/Uri;)I
    .locals 6
    .parameter "uri"

    .prologue
    const/16 v2, -0x7d0

    .line 449
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installDrmMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 452
    :cond_0
    const-string v3, "OmaDrmClient"

    const-string v4, "installDrmMsg : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return v2

    .line 456
    :cond_1
    const/4 v1, 0x0

    .line 458
    .local v1, path:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/drm/OmaDrmClient;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 463
    invoke-virtual {p0, v1}, Lcom/mediatek/drm/OmaDrmClient;->installDrmMsg(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @installDrmMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public installDrmMsg(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    const/16 v5, -0x7d0

    .line 473
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installDrmMsg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    :cond_0
    const-string v6, "OmaDrmClient"

    const-string v7, "installDrmMsg : Given path is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    :goto_0
    return v5

    .line 481
    :cond_2
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x7e5

    const-string v7, "application/vnd.oma.drm.message"

    invoke-direct {v4, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 484
    .local v4, request:Landroid/drm/DrmInfoRequest;
    const-string v6, "action"

    const-string v7, "installDrmMsg"

    invoke-virtual {v4, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v6, "data"

    invoke-virtual {v4, v6, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    iget-object v6, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 491
    .local v2, info:Landroid/drm/DrmInfo;
    invoke-virtual {v2}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 492
    .local v0, data:[B
    const-string v3, ""

    .line 493
    .local v3, message:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 496
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3           #message:Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .restart local v3       #message:Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v6, "OmaDrmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installDrmMsg : >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v6, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 497
    .end local v3           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 498
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "OmaDrmClient"

    const-string v7, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v3, ""

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 1
    .parameter "drmInfo"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "OmaDrmClient"

    const-string v1, "release OmaDrmClient instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 114
    :cond_0
    return-void
.end method

.method public removeAllRights()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    return v0
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 1
    .parameter "uri"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rescanDrmMediaFiles(Landroid/content/Context;Landroid/drm/DrmRights;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 5
    .parameter "context"
    .parameter "rights"
    .parameter "callback"

    .prologue
    .line 672
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    new-instance v3, Lcom/mediatek/drm/OmaDrmClient$getCidListener;

    invoke-direct {v3, p0, p1, p3}, Lcom/mediatek/drm/OmaDrmClient$getCidListener;-><init>(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)V

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 675
    new-instance v0, Landroid/drm/DrmInfo;

    const/16 v2, 0x7e6

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/drm/DrmRights;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    .line 678
    .local v0, info:Landroid/drm/DrmInfo;
    const-string v2, "action"

    const-string v3, "getContentId"

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    iget-object v2, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    .line 682
    .local v1, result:I
    const-string v2, "OmaDrmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OmaDrmClient#rescanDrmMediaFiles: > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v1
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "drmRights"
    .parameter "rightsPath"
    .parameter "contentPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/drm/OmaDrmClient;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
