.class public Lcom/mediatek/drm/OmaDrmStore$DrmRequestAction;
.super Ljava/lang/Object;
.source "OmaDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmRequestAction"
.end annotation


# static fields
.field public static final ACTION_CHECK_CLOCK:Ljava/lang/String; = "checkClock"

.field public static final ACTION_CONSUME_RIGHTS:Ljava/lang/String; = "consumeRights"

.field public static final ACTION_GET_CONTENT_ID:Ljava/lang/String; = "getContentId"

.field public static final ACTION_INSTALL_DRM_MSG:Ljava/lang/String; = "installDrmMsg"

.field public static final ACTION_LOAD_CLOCK:Ljava/lang/String; = "loadClock"

.field public static final ACTION_LOAD_DEVICE_ID:Ljava/lang/String; = "loadDeviceId"

.field public static final ACTION_LOAD_SECURE_TIME:Ljava/lang/String; = "loadSecureTime"

.field public static final ACTION_SAVE_CLOCK:Ljava/lang/String; = "saveClock"

.field public static final ACTION_SAVE_DEVICE_ID:Ljava/lang/String; = "saveDeviceId"

.field public static final ACTION_UPDATE_CLOCK:Ljava/lang/String; = "updateClock"

.field public static final ACTION_UPDATE_OFFSET:Ljava/lang/String; = "updateOffset"

.field public static final ACTION_UPDATE_TIME_BASE:Ljava/lang/String; = "updateTimeBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
