.class public Lcom/mediatek/drm/OmaDrmStore$MimePrefix;
.super Ljava/lang/Object;
.source "OmaDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimePrefix"
.end annotation


# static fields
.field public static final AUDIO:Ljava/lang/String; = "audio/"

.field public static final IMAGE:Ljava/lang/String; = "image/"

.field public static final VIDEO:Ljava/lang/String; = "video/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
