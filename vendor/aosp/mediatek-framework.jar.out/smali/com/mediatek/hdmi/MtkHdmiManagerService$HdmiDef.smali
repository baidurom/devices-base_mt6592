.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiDef;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HdmiDef"
.end annotation


# static fields
.field public static final AUTO:I = 0x64

.field public static final RESOLUTION_1280X720P3D_50HZ:I = 0xe

.field public static final RESOLUTION_1280X720P3D_60HZ:I = 0xd

.field public static final RESOLUTION_1280X720P_50HZ:I = 0x3

.field public static final RESOLUTION_1280X720P_60HZ:I = 0x2

.field public static final RESOLUTION_1920X1080I3D_50HZ:I = 0x10

.field public static final RESOLUTION_1920X1080I3D_60HZ:I = 0xf

.field public static final RESOLUTION_1920X1080I_50HZ:I = 0x5

.field public static final RESOLUTION_1920X1080I_60HZ:I = 0x4

.field public static final RESOLUTION_1920X1080P3D_23HZ:I = 0x12

.field public static final RESOLUTION_1920X1080P3D_24HZ:I = 0x11

.field public static final RESOLUTION_1920X1080P_23HZ:I = 0x9

.field public static final RESOLUTION_1920X1080P_24HZ:I = 0x8

.field public static final RESOLUTION_1920X1080P_25HZ:I = 0x7

.field public static final RESOLUTION_1920X1080P_29HZ:I = 0xa

.field public static final RESOLUTION_1920X1080P_30HZ:I = 0x6

.field public static final RESOLUTION_1920X1080P_50HZ:I = 0xc

.field public static final RESOLUTION_1920X1080P_60HZ:I = 0xb

.field public static final RESOLUTION_720X480P_60HZ:I = 0x0

.field public static final RESOLUTION_720X576P_50HZ:I = 0x1

.field public static final SINK_1080I50:I = 0x1000

.field public static final SINK_1080I60:I = 0x4

.field public static final SINK_1080P23976:I = 0x200000

.field public static final SINK_1080P24:I = 0x100000

.field public static final SINK_1080P25:I = 0x80000

.field public static final SINK_1080P2997:I = 0x400000

.field public static final SINK_1080P30:I = 0x200

.field public static final SINK_1080P50:I = 0x2000

.field public static final SINK_1080P60:I = 0x8

.field public static final SINK_480I:I = 0x40

.field public static final SINK_480I_1440:I = 0x80

.field public static final SINK_480I_2880:I = 0x100

.field public static final SINK_480P:I = 0x1

.field public static final SINK_480P_1440:I = 0x10

.field public static final SINK_480P_2880:I = 0x20

.field public static final SINK_576I:I = 0x10000

.field public static final SINK_576I_1440:I = 0x20000

.field public static final SINK_576I_2880:I = 0x40000

.field public static final SINK_576P:I = 0x400

.field public static final SINK_576P_1440:I = 0x4000

.field public static final SINK_576P_2880:I = 0x8000

.field public static final SINK_720P50:I = 0x800

.field public static final SINK_720P60:I = 0x2

.field public static sResolutionMask:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 906
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiDef;->sResolutionMask:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
        0x0t 0x0t 0x20t 0x0t
        0x0t 0x0t 0x40t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultResolutions()[I
    .locals 2

    .prologue
    .line 927
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 930
    .local v0, resolutions:[I
    return-object v0

    .line 927
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getPreferedResolutions()[I
    .locals 2

    .prologue
    .line 934
    const/4 v0, 0x0

    .line 955
    .local v0, prefered:[I
    const/4 v1, 0x2

    new-array v0, v1, [I

    .end local v0           #prefered:[I
    fill-array-data v0, :array_0

    .line 958
    .restart local v0       #prefered:[I
    return-object v0

    .line 955
    :array_0
    .array-data 0x4
        0x66t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method
