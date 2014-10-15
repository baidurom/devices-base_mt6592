.class public abstract Lcom/mediatek/hdmi/NvRAMAgent$Stub;
.super Landroid/os/Binder;
.source "NvRAMAgent.java"

# interfaces
.implements Lcom/mediatek/hdmi/NvRAMAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/NvRAMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/NvRAMAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "NvRAMAgent"

.field static final TRANSACTION_READFILE:I = 0x1

.field static final TRANSACTION_WRITEFILE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "NvRAMAgent"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/NvRAMAgent;
    .locals 2
    .parameter "obj"

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v1, "NvRAMAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/hdmi/NvRAMAgent;

    if-eqz v1, :cond_1

    .line 66
    check-cast v0, Lcom/mediatek/hdmi/NvRAMAgent;

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lcom/mediatek/hdmi/NvRAMAgent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/NvRAMAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 77
    :sswitch_0
    const-string v6, "NvRAMAgent"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :sswitch_1
    const-string v6, "NvRAMAgent"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .local v1, myArg0:I
    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->readFile(I)[B

    move-result-object v3

    .line 84
    .local v3, myResult:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 88
    .end local v1           #myArg0:I
    .end local v3           #myResult:[B
    :sswitch_2
    const-string v6, "NvRAMAgent"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, myArg01:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 93
    .local v0, arg1:[B
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/hdmi/NvRAMAgent$Stub;->writeFile(I[B)I

    move-result v4

    .line 94
    .local v4, myResult2:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
