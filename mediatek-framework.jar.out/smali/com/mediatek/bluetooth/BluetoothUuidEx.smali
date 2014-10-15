.class public Lcom/mediatek/bluetooth/BluetoothUuidEx;
.super Ljava/lang/Object;
.source "BluetoothUuidEx.java"


# static fields
.field public static final BipResponder:Landroid/os/ParcelUuid;

.field public static final BppReceiver:Landroid/os/ParcelUuid;

.field public static final ObexFileTransfer:Landroid/os/ParcelUuid;

.field public static final Proximity:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "00001118-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BppReceiver:Landroid/os/ParcelUuid;

    .line 31
    const-string v0, "0000111B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothUuidEx;->BipResponder:Landroid/os/ParcelUuid;

    .line 41
    const-string v0, "00001803-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothUuidEx;->Proximity:Landroid/os/ParcelUuid;

    .line 51
    const-string v0, "00001106-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/BluetoothUuidEx;->ObexFileTransfer:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
