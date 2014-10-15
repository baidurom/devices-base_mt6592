.class public final enum Landroid/annotation/BaiduHook$Product;
.super Ljava/lang/Enum;
.source "BaiduHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/BaiduHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/BaiduHook$Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/BaiduHook$Product;

.field public static final enum BAIDU:Landroid/annotation/BaiduHook$Product;

.field public static final enum COMMON:Landroid/annotation/BaiduHook$Product;

.field public static final enum MTK:Landroid/annotation/BaiduHook$Product;

.field public static final enum QCOM:Landroid/annotation/BaiduHook$Product;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Landroid/annotation/BaiduHook$Product;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2}, Landroid/annotation/BaiduHook$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/BaiduHook$Product;->COMMON:Landroid/annotation/BaiduHook$Product;

    .line 20
    new-instance v0, Landroid/annotation/BaiduHook$Product;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v3}, Landroid/annotation/BaiduHook$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/BaiduHook$Product;->MTK:Landroid/annotation/BaiduHook$Product;

    .line 23
    new-instance v0, Landroid/annotation/BaiduHook$Product;

    const-string v1, "QCOM"

    invoke-direct {v0, v1, v4}, Landroid/annotation/BaiduHook$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/BaiduHook$Product;->QCOM:Landroid/annotation/BaiduHook$Product;

    .line 26
    new-instance v0, Landroid/annotation/BaiduHook$Product;

    const-string v1, "BAIDU"

    invoke-direct {v0, v1, v5}, Landroid/annotation/BaiduHook$Product;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/BaiduHook$Product;->BAIDU:Landroid/annotation/BaiduHook$Product;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/annotation/BaiduHook$Product;

    sget-object v1, Landroid/annotation/BaiduHook$Product;->COMMON:Landroid/annotation/BaiduHook$Product;

    aput-object v1, v0, v2

    sget-object v1, Landroid/annotation/BaiduHook$Product;->MTK:Landroid/annotation/BaiduHook$Product;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/BaiduHook$Product;->QCOM:Landroid/annotation/BaiduHook$Product;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/BaiduHook$Product;->BAIDU:Landroid/annotation/BaiduHook$Product;

    aput-object v1, v0, v5

    sput-object v0, Landroid/annotation/BaiduHook$Product;->$VALUES:[Landroid/annotation/BaiduHook$Product;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/BaiduHook$Product;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Landroid/annotation/BaiduHook$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/BaiduHook$Product;

    return-object v0
.end method

.method public static values()[Landroid/annotation/BaiduHook$Product;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Landroid/annotation/BaiduHook$Product;->$VALUES:[Landroid/annotation/BaiduHook$Product;

    invoke-virtual {v0}, [Landroid/annotation/BaiduHook$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/BaiduHook$Product;

    return-object v0
.end method
