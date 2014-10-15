.class public Lcom/mediatek/op/util/DefaultWebProtocolNames;
.super Ljava/lang/Object;
.source "DefaultWebProtocolNames.java"

# interfaces
.implements Lcom/mediatek/common/util/IWebProtocolNames;


# static fields
.field private static final DEFAULT_WEB_PROTOCOL_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rtsp://"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/op/util/DefaultWebProtocolNames;->DEFAULT_WEB_PROTOCOL_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebProtocolNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const-string v0, "DefaultWebProtocolNames"

    const-string v1, "getWebProtocolNames"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/mediatek/op/util/DefaultWebProtocolNames;->DEFAULT_WEB_PROTOCOL_NAMES:[Ljava/lang/String;

    return-object v0
.end method
