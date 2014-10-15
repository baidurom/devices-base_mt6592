.class public Lcom/mediatek/drm/OmaDrmStore$ConstraintsColumns;
.super Ljava/lang/Object;
.source "OmaDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstraintsColumns"
.end annotation


# static fields
.field public static final EXTENDED_METADATA:Ljava/lang/String; = "extended_metadata"

.field public static final LICENSE_AVAILABLE_TIME:Ljava/lang/String; = "license_available_time"

.field public static final LICENSE_EXPIRY_TIME:Ljava/lang/String; = "license_expiry_time"

.field public static final LICENSE_START_TIME:Ljava/lang/String; = "license_start_time"

.field public static final MAX_REPEAT_COUNT:Ljava/lang/String; = "max_repeat_count"

.field public static final REMAINING_REPEAT_COUNT:Ljava/lang/String; = "remaining_repeat_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
