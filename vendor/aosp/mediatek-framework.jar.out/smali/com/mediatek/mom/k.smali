.class Lcom/mediatek/mom/k;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"


# static fields
.field private static c:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/k;->a:Ljava/util/HashSet;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/k;->b:Z

    .line 76
    return-void
.end method

.method public static final a()Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/mediatek/mom/k;

    invoke-direct {v0}, Lcom/mediatek/mom/k;-><init>()V

    sput-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Create MobileManagerController: CallInterceptionController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 85
    :cond_0
    sget-object v0, Lcom/mediatek/mom/k;->c:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method


# virtual methods
.method public enableController(Z)V
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/mediatek/mom/MobileManagerControllerBase;->enableController(Z)V

    .line 101
    const-string v0, "MoMS.CallInterceptionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/mom/k;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enable call interception controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/k;->b:Z

    .line 91
    return-void
.end method
