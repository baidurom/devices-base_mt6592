.class Landroid/content/pm/ActivityInfo$BaiduInjector;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setOutputBaidu(II)I
    .locals 3
    .parameter "input"
    .parameter "orgOutput"

    .prologue
    const/high16 v2, -0x8000

    move v0, p1

    .local v0, output:I
    and-int v1, p0, v2

    if-eqz v1, :cond_0

    or-int/2addr v0, v2

    :cond_0
    return v0
.end method
